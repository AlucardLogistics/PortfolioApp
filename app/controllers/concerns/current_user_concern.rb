module CurrentUserConcern

  extend ActiveSupport::Concern

  #overwrite the devise current_user so it can be available even if there is no user signed in
  def current_user
    #super the main class of devise current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User", 
                  first_name: "Guest", 
                  last_name: "User", 
                  email: "guest@email.com"
                  )
  end

end