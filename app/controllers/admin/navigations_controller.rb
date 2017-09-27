module Admin
  class NavigationsController < DashboardController
    def index
      @navigations = Navigation.all
    end
  end
end