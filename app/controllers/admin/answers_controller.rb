module Admin
  class AnswersController < DashboardController
    def index
      @surveys = Survey.all
    end

    def show
      @data = DataStore.where(survey_id: params[:id]).order(:created_at)
      puts "CANTIDAD: #{@data.count}"
      @all_data = Hash.new("default")
      @data.each do |item|
        @all_data = @all_data.merge(item.surveys){|key,oldval,newval| [*oldval].to_a + [*newval].to_a }
      end
      puts @all_data
    end

    def edit
      @data = DataStore.find_by_id(params[:id])
    end

    def update
      to_update = {}
      update_params.each do |item, value|
        to_update[item] = value
      end
      @data = DataStore.find_by_id(params[:id])
      @data.surveys = to_update
      render :edit if @data.save
    end

    def destroy
      @data = DataStore.find_by(id: params[:id])
      survey_id = @data.survey_id
      @data.destroy
      redirect_to admin_answer_path(survey_id), notice: 'Acción completada con éxito'
    end

    def destroy_survey
      @data = Survey.find_by(id: params[:id])
      @data.destroy
      redirect_to admin_answers_path, notice: 'Acción completada con éxito'
    end

    def toggle_approved
      @data = DataStore.find_by(id: params[:id])
      @data.update(approved: !@data.approved)
      respond_to do |format|
        format.js
      end
    end

    def export_document
      @data = DataStore.where(survey_id: params[:survey_id])
      io = StringIO.new
      workbook = WriteXLSX.new(io)
      worksheet = workbook.add_worksheet
      # Write a formatted and unformatted string, row and column notation.
      col = row = 0
      header_flag = false
      format = workbook.add_format # Add a format
      format.set_bold
      format.set_color('blue')
      @data.each do |item|
        # set headers
        unless header_flag
          item.surveys.each do |th|
            worksheet.write(row, col, th[0], format)
            col += 1
          end
          worksheet.write(row, col, "Fecha", format)
          row += 1
          col = 0
          header_flag = true
        end
        # set body
        item.surveys.each do |td|
          if td[1] =~ URI::regexp
            worksheet.write(row, col, td[1])
          else
            worksheet.write(row, col, td[1])
          end
          col += 1
        end
        worksheet.write(row, col, item.created_at.strftime("%d/%m/%Y %H:%M"))
        row += 1
        col = 0
      end
      workbook.close
      send_data io.string, filename: "Respuestas.xlsx", type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
    end

    private

    def update_params
      params.require(:survey)
    end
  end
end
