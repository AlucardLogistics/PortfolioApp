class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #devise_whitelist.rb file in controllers/concerns
  include DeviseWhitelist
  #set_source.rb file in controllers/concerns
  include SetSource
  #current_user_concern.rb file in controllers/concerns
  include CurrentUserConcern
  #default_page_content.rb in the controllers/concerns
  include DefaultPageContent
end
