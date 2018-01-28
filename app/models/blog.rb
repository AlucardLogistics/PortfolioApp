class Blog < ApplicationRecord

  enum status: {draft: 0, published: 1}

  extend FriendlyId
  friendly_id :title, use: :slugged

  #this will update the slug string in the url when the title will change
  def should_generate_new_friendly_id?
    title_changed?
  end

  validates_presence_of :title, :body
  
end
