class Dashboard::PostsController < Dashboard::BaseController
  before_action :set_post, only: [:show, :update, :destroy, :edit]
  before_action :authenticate_dashboard_user!

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

  private

  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post).permit([:title, :body, :lead, :status])
  end
end
