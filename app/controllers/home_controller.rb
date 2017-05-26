class HomeController < ApplicationController
  def about
  end

  def index
    @posts = Post.new_published
  end
end
