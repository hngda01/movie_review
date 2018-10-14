class Actor < ApplicationRecord
  has_many :movie_characters, foreign_key: "actor_id"
  has_many :movies, through: :movie_characters, source: :movie

  validates :name, presence: true, length: {maximum: 500}
end
