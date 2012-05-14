class LoginController < ApplicationController
  def index

    if !params[:pass].nil?
      if params[:pass] =="Joni!Soest<3"
        session[:login] = true
        redirect_to admin_index_path
      end
    end
    notice = "Bitte Passwort eingeben!"
  end


  def logout
     reset_session
     redirect_to general_index_path
  end
end

