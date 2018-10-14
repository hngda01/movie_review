class MovieCharacter < ApplicationRecord
  belongs_to :movie, foreign_key: "movie_id"
  belongs_to :actor, foreign_key: "actor_id"

  validates :movie_id, presence: true
  validates :actor_id, presence: true
end
