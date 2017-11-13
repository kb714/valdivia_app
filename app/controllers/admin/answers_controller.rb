module Admin
  class AnswersController < DashboardController
    def index
      @surveys = Survey.all
    end

    def show
      @data = DataStore.where(survey_id: params[:id])
      puts "CANTIDAD: #{@data.count}"
      @all_data = Hash.new("default")
      @data.each do |item|
        #puts "PUTS: #{@all_data.merge(item.surveys){|key,oldval,newval| [*oldval].to_a + [*newval].to_a }}"
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

    private

    def update_params
      params.require(:survey)
    end
  end
end
