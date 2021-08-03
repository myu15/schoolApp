class UsersController < ApplicationController
  def signup
    # @user = User.new
  end

  def create
    # ストロングパラメータから精査されたデータだけをインスタンスに格納
    @user = User.new(user_params)

    # インスタンスの保存に成功した場合の処理
    if @user.save
      flash[:success] = "ユーザを登録しました"
      redirect_to @user

    # インスタンスの保存に失敗した場合の処理
    else
      flash[:danger] = "ユーザの登録に失敗しました"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


  def search
  end

  def showDetail
  end

  def edit
  end
end
