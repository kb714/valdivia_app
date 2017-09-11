module Admin
  class HoursController < DashboardController

    def index
      @hours = Hour.all
    end

    def show
      @hour = Hour.find_by(id: params[:id])
    end

    def destroy
      @hour = Hour.find_by(id: params[:id])
      @hour.destroy
      redirect_to admin_hours_path, notice: 'Elemento eliminado con éxito'
    end
  end
end
