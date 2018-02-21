class HomeController < ApplicationController
  def about
    @users = User.all
  end

  def index
    @posts = Post.new_published.decorate
  end
end
