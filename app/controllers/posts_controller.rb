class PostsController < ApplicationController
  def show
    @post = Post.includes(:author).published.friendly.find(slug).decorate
  end

  private
  def slug
    params.require(:slug)
  end
end
