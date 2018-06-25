class Dashboard::UsersController < Dashboard::BaseController
  before_action :set_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to dashboard_root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update user_params
      bypass_sign_in(@user)
      redirect_to dashboard_root_path
    else
      render :edit
    end
  end

  private

  def set_user
    @user ||= current_dashboard_user
  end

  def user_params
    params.require(:user).permit(
      [
        :image_data, :full_name, :quote, :description, :twitter, :github, :show,
        :linkedin, :password, :password_confirmation, :email
      ]
    )
  end
end
