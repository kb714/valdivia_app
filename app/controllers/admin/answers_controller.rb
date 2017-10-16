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
  end
end
