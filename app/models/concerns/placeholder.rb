module Placeholder
  extend ActiveSupport::Concern

  #methods created here can be shared accross any models
  #NO LONGER NEEDED AFTER CARRIERWAVE GEM WAS IMPLEMENTD
  # def self.image_generator(height:, width:)
  #   "http://via.placeholder.com/#{height}x#{width}"
  # end
end