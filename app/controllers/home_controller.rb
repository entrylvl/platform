class HomeController < ApplicationController
  def about
  end

  def index
    @posts = Post.published.order(:published_at).reverse_order
  end

  def post
    @post = Post.published.friendly.find(params.require(:slug))

    unless @post
      render :index
    end
  end
end
