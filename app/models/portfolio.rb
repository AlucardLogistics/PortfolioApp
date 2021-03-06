class Portfolio < ApplicationRecord

  #table relationship one to many technologies (rails handle pluralization)
  #inverse of: is an association for cocoon gem
  has_many :technologies, inverse_of: :portfolio, dependent: :destroy

  #accepts attributes from technologies table and validates to not be blank
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  #this is a placeholder file created in the models/concerns/placeholder.rb NO LONGER NEEDED AFTER CARRIERWAVE GEM
  #include Placeholder 

  #validation for the porfolio fields (can't be empty condition)
  validates_presence_of :title, :subtitle, :body

  #carrierwave gem
  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  #defining a scope that will filter the portfolio items based on their subtitle
  def self.angular
    where(subtitle: 'Angular')
  end

  #method to place portfolio items in ASCending order in the index action
  def self.by_position
    order("position ASC")
  end

  #defining a scope that will filter the portfolio items based on their subtitle
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  #AFTER CARRIERWAVE GEM WAS ADDED IT WILL OVVERWRITE THE PLACEHOLDER PICS
  #defining default values of data
  #this will occur after the def new method in the controller
  #after_initialize :set_defaults

  #sets the default image and thumb image as default in case is not chosen
  #||= this will set a default image if image holder is nill (it will not overwrite an image if is already beeing set)
  # def set_defaults
  #   #image_generator def created in the controllers/concerns/placeholder.rb
  #   self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
  #   self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  # end
  #END PLACEHOLDER IMPLMENTATION BEFORE CARRIERWAVE  
end

