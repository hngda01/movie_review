class AddRateScoreToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :rate_score, :integer
  end
end
