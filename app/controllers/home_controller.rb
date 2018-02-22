class HomeController < ApplicationController
  def about
    @users = User.all
  end

  def index
    @posts = Post.includes(:author).new_published.decorate
  end
end
