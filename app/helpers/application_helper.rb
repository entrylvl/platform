module ApplicationHelper
  def post_path(post)
    "post/#{post.friendly_id}"
  end
end
