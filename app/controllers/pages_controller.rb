class PagesController < ApplicationController
  def home
    @skills = Skill.all
    @blog = Blog.all
  end

  def about
  end

  def contact
  end
end
