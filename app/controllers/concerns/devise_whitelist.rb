module DeviseWhitelist
#name of the module will have to name the name of the file with capital letter for each word
#module is like a class but is considered a helper where it can be stored methods that is not rails specific
#like controller methods or model methods
  extend ActiveSupport::Concern

  #included do will allow to use before_action
  included do
    #custom made method that will be ran before anything only if it has communication with devise controller
    before_action :configure_permitted_parameters, if: :devise_controller?
  end  

  #this method will add the :name field to the devise authentification system 
  #devise setup will provide by default just email, password and password confirmation fields
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end


end