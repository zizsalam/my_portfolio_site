class HomepageController < ApplicationController
  def home
    @posts = Post.all.limit(3).order('created_at desc')
  end

  def index

  end
end
