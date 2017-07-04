class HomeController < ApplicationController
  layout 'home'

  def index

  end

  def hours
    @hours = Hour.new
  end

  def store_hours
    @hours = Hour.new(hours_params)
    if @hours.save
      redirect_to home_hours_path, notice: 'Su solicitud fue recepcionada, por favor, espere nuestra respuesta'
    else
      render :hours
    end
  end

  def forms
    @surveys = Survey.all
  end

  def show_form
    @survey = Survey.find_by(id: params[:id])
  end

  def store_form
    @survey = Survey.find_by(id: params[:id])
    render :show_form
  end

  private

  def hours_params
    params.require(:hour).permit(:name, :phone, :email, :subject, :description)
  end

end
