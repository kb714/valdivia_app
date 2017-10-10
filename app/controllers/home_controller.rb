class HomeController < ApplicationController
  layout :resolve_layout

  def index

  end

  def landing
    @hours = Hour.new
    @contact = Contact.new
    @navigation = Navigation.order(weight: :asc).all
    @pages = Page.order(weight: :asc).all
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
    puts "Guardado: #{params[:survey].to_json}"
    @survey.data_stores.create(surveys: params[:survey])
    render :show_form
  end

  private

  def hours_params
    params.require(:hour).permit(:name, :phone, :email, :subject, :description)
  end

  def resolve_layout
    case action_name
      when 'landing'
        'landing'
      when 'forms'
        'forms'
      when 'show_form'
        'forms'
      when 'store_form'
        'forms'
      else
        'home'
    end
  end

end
