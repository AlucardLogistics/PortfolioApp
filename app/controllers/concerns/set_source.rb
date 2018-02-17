module SetSource
  #name of the module will have to name the name of the file with capital letter for each word
  #module is like a class but is considered a helper where it can be stored methods that is not rails specific
  #like controller methods or model methods
  extend ActiveSupport::Concern


  #included do will allow to use before_action
  included do
    #custom made method that will be ran before anything and set a session source
    before_action :set_source
  end

  #this method will grab any data in the cookies and it can be shared through the application
  def set_source
    session[:source] = params[:q] if params[:q]
  end

end