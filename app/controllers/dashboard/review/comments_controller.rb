class Dashboard::Review::CommentsController < Dashboard::BaseController
  layout 'application'

  def create
    @post = Post.friendly.find(params.fetch(:post_id))
    @new_comment = ::Review::Comment.new(comment_params(@post))

    if @new_comment.save
      redirect_to dashboard_post_path(@post)
    else
      @post = @post.decorate
      @comments = @post.review_comments.decorate

      render template: 'dashboard/posts/show'
    end
  end

  private

  def comment_params(post)
    params.require(:review_comment).permit(:body).merge(
      post: post,
      user: current_dashboard_user
    )
  end
end
