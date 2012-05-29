class Contact < ActionMailer::Base
  default from: "rubybiconcepts@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact.send.subject
  #
  def send_user_contact(c)

    @contact = c
    mail to: "i.kizilgoez@googlemail.com"
  end
end

