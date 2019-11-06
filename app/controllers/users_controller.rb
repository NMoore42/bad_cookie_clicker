class UsersController < ApplicationController
  before_action :find_user, only: [:show, :add_cookie]

  def index

  end

  def new

  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      flash[:error] = "Please fill out a name"
      redirect_to "/users/new"
    end
  end

  def show
    @cookies_per_click = 1 + (@user.fingers * 2) + (@user.grandmas * 50) + (@user.bakeries * 1000)
    #Start here - still need to add more clicks based on the above
  end

  def add_cookie
    @user.cookies += 1
    @user.save
    redirect_to user_path(@user)
  end



  private

  def user_params
    params.require(:user).permit(:name)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
