module CurrentUserConcern

  extend ActiveSupport::Concern

  #overwrite the devise current_user so it can be available even if there is no user signed in
  def current_user
    #super the main class of devise current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@portfolioApp.com"
    #returns full guest object
    guest
  end

end