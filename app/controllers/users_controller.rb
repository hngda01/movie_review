class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy,:show]

  before_action :correct_user,   only: [:edit, :update]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome!"
      redirect_to @user
    else
      flash[:danger] = "please fill in all input fields!"
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      flash[:danger] = "please fill in all input fields!"
      redirect_to @user
    end
  end
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_back(fallback_location: root_path)
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation,:picture,:address,:hobby,:phone_number)
    end

    # Before filters

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end
