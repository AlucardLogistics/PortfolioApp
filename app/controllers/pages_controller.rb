class PagesController < ApplicationController
  def home
    @skills = Skill.all
    @blog = Blog.all
  end

  def about
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end

end
