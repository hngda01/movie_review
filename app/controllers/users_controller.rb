class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit]
  def new
    @user = User.new
  end

  def show
    @movies_reviewed = @user.reviewed_movies
    @movies_rated = @user.rated_movies
  end

  def find_user
    @user = User.find_by id: params[:id]
    return if @user
    redirect_to root_path
    flash[:danger] = "ユーザがいません。"
  end
end