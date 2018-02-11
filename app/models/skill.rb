class Skill < ApplicationRecord

  #this is a placeholder file created in the controllers/concerns/placeholder.rb
  include Placeholder

  #validation for the porfolio fields (can't be empty condition)
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  #sets the default image and thumb image as default in case is not chosen
  #||= this will set a default image if image holder is nill (it will not overwrite an image if is already beeing set)
  def set_defaults
    #image_generator def created in the controllers/concerns/placeholder.rb
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
