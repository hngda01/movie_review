class ActorsController < ApplicationController
  def new
    @actor = Actor.new
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def create
    @actor = Actor.new actor_params
    if @actor.save
      flash[:success] = "追加しました。"
      redirect_to root_path
    else
      flash[:danger] = "エラーが発生しました、もう一度お試しください"
      redirect_to root_path
    end
  end

  def update
    @actor = Actor.find(params[:id])
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    flash[:success] = "削除しました"
  end
  private

  def actor_params
    params.require(:actor).permit :name, :picture
  end
end
