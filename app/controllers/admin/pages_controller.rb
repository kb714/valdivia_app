module Admin
  class PagesController < DashboardController

    def index
      @pages = Page.all
    end

  end
end
