module DefaultPageContent
#name of the module will have to name the name of the file with capital letter for each word
#module is like a class but is considered a helper where it can be stored methods that is not rails specific
#like controller methods or model methods
  extend ActiveSupport::Concern

  #included do will allow to use before_action
  included do
    #custom made method that will be ran before anything and sets the title of the page viewed in browser
    before_action :set_page_data
  end   

  #this will set the title of portfolio index page to "Dragos | My Portfolio"
  def set_page_data
    @page_title = "Dragos | My Portfolio"
    @seo_keywords = "Dragos Portfolio"
  end


end