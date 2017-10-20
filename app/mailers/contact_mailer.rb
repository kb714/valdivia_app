class ContactMailer < ApplicationMailer
  default from: 'notification@muniemprende.cl'

  def contact_email(data)
    @data = data
    mail(to: 'alexis@acvp.cl', subject: 'Contacto desde web')
  end
end
