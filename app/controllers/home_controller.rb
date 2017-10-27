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
    data = params[:survey]
    data.each do |key, item|
      case item
        when Rack::Test::UploadedFile, ActionDispatch::Http::UploadedFile
          file = SurveyFile.create(survey_id: params[:id], image: item)
          data[key] = request.base_url + file.image.url
        else
          puts item
      end
    end
    #puts "Guardado: #{params[:survey].to_json}"
    @survey.data_stores.create(surveys: data)
    flash[:form_alert] = "Formulario recibido con éxito"
    render :show_form
  end

  def contact
    puts 'contact'
    ContactMailer.contact_email(contact_params).deliver_now
    redirect_to root_path, notice: 'Su mensaje fue recibido con éxito'
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
