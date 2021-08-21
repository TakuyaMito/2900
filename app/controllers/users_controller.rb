class UsersController < ApplicationController
  def new
  end

  def create
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :last_name, :first_name)
  end
end
