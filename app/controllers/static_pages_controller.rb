class StaticPagesController < ApplicationController
  def home
    @movie = Movie.new
  end
end
