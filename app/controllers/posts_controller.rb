class PostsController < ApplicationController
  def post
    @post = Post.published.friendly.find(slug)
  end

  private
  def slug
    params.require(:slug)
  end
end
