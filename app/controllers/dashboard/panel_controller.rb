class Dashboard::PanelController < ApplicationController
  before_action :authenticate_dashboard_user!
  before_action :set_user, only: [:picture, :save_picture]

  def index
  end

  def picture
  end

  def save_picture
    if @user.update user_params
      redirect_to dashboard_root_path
    else
      render :picture
    end
  end

  private

  def set_user
    @user ||= current_dashboard_user
  end

  def user_params
    params.require(:user).permit([:image_data])
  end
end
