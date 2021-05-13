class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "ユーザー情報の編集をしました"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "ユーザーの新規作成をしました"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).premit(:name, :email)
  end
end
