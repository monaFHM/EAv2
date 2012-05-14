class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

    def set_locale
      I18n.locale = params[:locale]|| I18n.default_locale
    end

   def default_url_options(options={})
     { locale: I18n.locale }
   end




  #  def locale_path(locale)
  #    locale_regexp = %r{/(en|de|fr)/?}
  #    if request.env['PATH_INFO'] =~ locale_regexp
  #      "#{request.env['PATH_INFO']}".
  #      gsub(locale_regexp, "/#{locale}/")
  #    else
  #      "/#{locale}#{request.env['PATH_INFO']}"
   #   end
   # end
    #def locale_path(locale)
    #  I18n.locale = locale
    #end
    #helper_method :locale_path
end

