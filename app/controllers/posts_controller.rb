class PostsController < ApplicationController
  before_action :set_post, only:[:show, :update, :destroy, :edit]

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
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
      redirect_to @post
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
    params.require(:post).permit([:title, :slug, :body, :lead])
  end

end
