module Admin
  class PagesController < DashboardController
    before_action :set_page, only: [:edit, :update, :destroy]

    def index
      @pages = Page.all
    end

    def new
      @page = Page.new
    end

    def create
      @page = Page.new(page_params)

      if @page.save
        redirect_to edit_admin_page_path(@page), notice: 'Elemento añadido con éxito.'
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @page.update(page_params)
        redirect_to edit_admin_page_path(@page), notice: 'Elemento actualizado.'
      else
        render :edit
      end
    end

    def destroy
      @page = Page.find_by(id: params[:id])
      @page.destroy
      redirect_to admin_pages_path, notice: 'Acción completada con éxito'
    end

    private

    def set_page
      @page = Page.find_by(id: params[:id])
    end

    def page_params
      params.require(:page).permit(
          :name,
          :weight,
          :page_type,
          :background_color,
          :content_right,
          :content_left,
          :animation_right,
          :animation_left,
          :sliders_attributes => [:id, :url, :target, :image, :_destroy]
      )
    end

  end
end