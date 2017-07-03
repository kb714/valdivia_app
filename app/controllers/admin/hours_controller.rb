class Admin::HoursController < ApplicationController

  def index
    @hours = Hour.all
  end
end
