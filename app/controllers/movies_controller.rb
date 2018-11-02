class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    @ownNotifications= Notification.where("user_id = ? and movie_id = ?",current_user.id,params[:id])
    @ownNotifications.each do |noti|
      noti.destroy
    end
    @notifications= @user.notifications
  end
  def create
    @movie = Movie.new movie_params
    # byebug
    if @movie.save
      params[:movie][:characters_attributes].each do |a|
        act = Actor.find_by(name: a[1][:name])
        if act.blank?
          r = Actor.new(name: a[1][:name])
          r.save
          mc = MovieCharacter.new movie_id: @movie.id, actor_id: r.id
          mc.save
        else
          mc = MovieCharacter.new movie_id: @movie.id, actor_id: act.id
          mc.save
        end
      end
      flash[:success] = "管理者に映画を進めました"
      redirect_to root_path
    else
      flash[:danger] = "エラーが発生しました、もう一度お試しください"
      redirect_to root_path
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:success] = "削除しました"
    redirect_to @movie
  end

  def edit
    @movie = Movie.find(params[:id])
    @notifications= @user.notifications
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(movie_params)
      flash[:success] = "映画を更新しました"
      redirect_to @movie
    else
      flash[:danger] = "失敗した! 入力フィールドを空白にすることはできません"
      redirect_to @movie
    end
  end

  private

  def movie_params
    params.require(:movie).permit :name, :info, :date, :picture, characters_attribute: [:name]
  end
end
