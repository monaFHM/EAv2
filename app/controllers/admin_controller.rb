class AdminController < ApplicationController
    before_filter :check, :except => :pictures

  def check
      if !session[:login]
        redirect_to general_index_path
      end
  end


  def index
  end

  def pictures

    name=params[:name]
    betreff=params[:subject]
    email=params[:email]
    message=params[:message]


     respond_to do |format|
        if name.nil? || email.nil? || message.nil?
            format.html { redirect_to general_contact_path, notice: I18n.t("missing_contact_info") }
        else
          @cf = ContactForm.new(name,email,betreff,message)
          p = {'email' => email, 'name' => name, 'betreff' => betreff, 'message' => message}
          dummy="text"
          Contact.send_user_contact(@cf).deliver
          format.html { redirect_to general_contact_path, notice: I18n.t("contact_success") }
        end
    end







  end

end

