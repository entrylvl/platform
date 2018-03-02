class HomeController < ApplicationController
  def about
    @users = User.all
  end

  def index
    @posts = Post.includes(:author)
                 .page(current_page)
                 .per(current_per_page)
                 .new_published.decorate
    @next_page = next_page
    @previous_page = previous_page
  end

  private

  def current_per_page
    @current_per_page ||= params.fetch(:per_page, 10).to_i
  end

  def current_page
    @current_page ||= params.fetch(:page, 1).to_i
  end

  def next_page
    current_page + 1
  end

  def previous_page
    current_page - 1
  end
end
