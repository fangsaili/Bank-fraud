class AdminController < ApplicationController
  def new
    @user = User.new
    
  end

  def create
    @user = User.new(user_params)
  if @user.save
    redirect_to admin_index_path
  else
    render 'new'
  end
  end



  def index
    @users = User.all
    @accounts = Account.all
  end

  def show
    @user = User.find(params[:id])

  end



  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end




end
