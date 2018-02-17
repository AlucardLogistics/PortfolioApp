class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #devise_whitelist.rb file in controllers/concerns
  include DeviseWhitelist
  #set_source.rb file in controllers/concerns
  include SetSource

end
