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
      flash[:notice] = "ユーザー編集をしました"
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
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      flash[:notice] = "ログインに成功しました！"
      redirect_to user_path(@user)
    else
      @error_message = "入力したメールアドレス、パスワードのいずれかが間違っています。"
      render :login_form
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image, :password)
  end
end
