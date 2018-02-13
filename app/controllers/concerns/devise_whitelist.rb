module DeviseWhitelist
#name of the module will have to name the name of the file with capital letter for each word
#module is like a class but is considered a helper where it can be stored methods that is not rails specific
#like contrller methods or model methods
  extend ActiveSupport::Concern

  #included do will allow to use before_action
  included do
    #custom made method that will be ran before anything only if it has communication with devise controller
    before_action :configure_permitted_parameters, if: :devise_controller?
  end  

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end


end