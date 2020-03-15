class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    authorize @user
    @user.update(set_params)
    redirect_to user_path(@user)
  end

  private

  def set_params
    params.require(:user).permit(:email, :first_name, :last_name, :profile_picture, :promotion, :section, :classe, :is_ndc)
  end
end
