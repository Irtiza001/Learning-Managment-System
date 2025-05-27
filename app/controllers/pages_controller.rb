class PagesController < ApplicationController
  def index
  end

  def home
    @latest_courses = Course.order("created_at DESC").limit(5)
    @latest_blogs = Blog.order("created_at DESC").limit(5)
  end
  
  def logout
    # This page is shown after a user signs out
  end
end
