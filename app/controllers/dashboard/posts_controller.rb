class Dashboard::PostsController < Dashboard::BaseController
  before_action :set_post, only: [:update, :destroy, :edit, :publish]

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to dashboard_post_path(@post)
    else
      render :new
    end
  end

  def show
    @post = Post.includes(review_comments: [:user]).friendly.find(params[:id]).decorate
    @comments = @post.review_comments.decorate
    @new_comment = Review::Comment.new

    render layout: 'application'
  end

  def edit
  end

  def update
    @post.slug = nil

    if @post.update(post_params)
      redirect_to dashboard_post_path(@post)
    else
      render :edit
    end
  end

  def new
    @post = Post.new
  end

  def destroy
    @post.destroy
  end

  def publish
    @post.publish!

    redirect_to action: :index
  end

  private

  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post)
          .permit([:title, :body, :lead, :status, :header_image])
          .merge(author: current_dashboard_user)
  end
end
