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

  def contact
    puts 'contact'
    ContactMailer.contact_email(contact_params).deliver_now
    redirect_to root_path
  end

  private

  def hours_params
    params.require(:hour).permit(:name, :phone, :email, :subject, :description)
  end

  def contact_params
    params.require(:contact).permit(:nombre, :ciudad, :telefono, :email, :mensaje)
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
