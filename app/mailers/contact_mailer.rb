class ContactMailer < ApplicationMailer
  default from: 'notification@mailgun.muniemprende.cl'

  def contact_email(data)
    @data = data
    mail(to: 'muniemprende@gmail.com', subject: 'Contacto desde web')
  end
end
