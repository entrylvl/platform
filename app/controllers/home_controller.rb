class HomeController < ApplicationController
  def index
    @posts = Post.published
  end

  def slug
    @post = Post.published.where(slug: params.require(:slug)).first

    unless @post
      render :index
    end
  end
end
