class Contact < ActionMailer::Base
  default from: "rubybiconcepts@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact.send.subject
  #
  def send_user_contact(c)

    puts "HALLO FROM SEND USE CONTACT"
    @contact = c
    mail to: "kontakt@ramonaleenings.com"
  end
end

