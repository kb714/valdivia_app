class Contact < MailForm::Base
  attribute :nombre,  :validate => true
  attribute :ciudad,  :validate => true
  attribute :telefono,  :validate => true
  attribute :email,   :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :mensaje, :validate => true

  def headers
    {
        :subject => "Formulario de contacto",
        :to => "alexis@acvp.cl",
        :from => %("#{nombre}" <#{email}>)
    }
  end
end