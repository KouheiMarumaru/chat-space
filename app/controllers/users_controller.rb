class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update,]

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(users_params)
      redirect_to root_path, notice: "ユーザー情報を編集しました。"
    else
      flash.now[:alert] = "ユーザー情報を編集できませんでした。"
      render :edit
    end
  end

  private

  def users_params
    params.require(:user).permit(:name, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
