class MoviesController < ApplicationController
  def show
  	@movie = Movie.find(params[:id])
    if @movie && @movie.check == 1
  	 find_movie
    else
      redirect_to root_path
    end
  end
  def create
    @movie = Movie.new movie_params
    @movie.check = 0
    @movie.rate_score = 0
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

  private

  def movie_params
    params.require(:movie).permit :name, :info, :date, :picture, characters_attribute: [:name]
  end

  def find_movie
    @q = Movie.search(params[:q])
    @movies = @q.result(distinct: true)
  end
end
