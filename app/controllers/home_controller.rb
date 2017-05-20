class HomeController < ApplicationController
  def about
  end

  def index
  end

  def slug
    @post = Post.published.where(slug: params.require(:slug)).first

    unless @post
      render :index
    end
  end
end
