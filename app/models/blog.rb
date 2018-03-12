class Blog < ApplicationRecord

  enum status: {Draft: 0, Published: 1}

  extend FriendlyId
  friendly_id :title, use: :slugged

  #this will update the slug string in the url when the title will change
  def should_generate_new_friendly_id?
    title_changed?
  end

  validates_presence_of :title, :body
  belongs_to :topic, optional: true
  
end
