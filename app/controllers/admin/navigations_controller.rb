module Admin
  class NavigationsController < DashboardController
    before_action :set_navigation, only: [:edit, :update, :destroy]

    def index
      @navigations = Navigation.all
    end

    def new
      @navigation = Navigation.new
    end

    def create
      @navigation = Navigation.new(navigation_params)

      if @navigation.save
        redirect_to edit_admin_navigation_path(@navigation), notice: 'Elemento añadido con éxito.'
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @navigation.update(navigation_params)
        redirect_to edit_admin_navigation_path(@navigation), notice: 'Elemento actualizado.'
      else
        render :edit
      end
    end

    def destroy
      @navigation = Navigation.find_by(id: params[:id])
      @navigation.destroy
      redirect_to admin_navigations_path, notice: 'Acción completada con éxito'
    end

    private

    def set_navigation
      @navigation = Navigation.find_by(id: params[:id])
    end

    def navigation_params
      params.require(:navigation).permit(:name, :url, :target, :weight)
    end
  end
end