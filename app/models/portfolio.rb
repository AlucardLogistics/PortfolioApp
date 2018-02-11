class Portfolio < ApplicationRecord
  include Placeholder 
  validates_presence_of :title, :body, :main_image, :thumb_image

  #defining a scope that will filter the portfolio items based on their subtitle
  def self.angular
    where(subtitle: 'Angular')
  end

  #defining a scope that will filter the portfolio items based on their subtitle
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  #defining default values of data
  #this will occur after the def new method in the controller
  after_initialize :set_defaults

  #sets the default image and thumb image as default in case is not chosen
  #||= this will set a default image if image holder is nill (it will not overwrite an image if is already beeing set)
  def set_defaults
    #image_generator def created in the controllers/concerns/placeholder.rb
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end

