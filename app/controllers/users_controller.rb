class UsersController < ApplicationController

  def index
    @users = User.order('created_at DESC').paginate(page: params[:page], per_page: 30)
  end

  def show
    @user = User.find(params[:id])
  end

private
  # def user_params
  #   params.require(:user).permit(:username, :email, :password, :password_confirmation)
  # end
end
