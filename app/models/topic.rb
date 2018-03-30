class Topic < ApplicationRecord

  validates_presence_of :title
  has_many :blogs

  #just show topics that have blogs on that topic
  def self.with_blogs
    includes(:blogs).where.not(blogs: {id: nil})
  end

  def self.alpabetical
    order("title ASC")
  end

end
