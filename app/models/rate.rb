class Rate < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  belongs_to :movie, foreign_key: "movie_id"

  validates :user_id, presence: true
  validates :movie_id, presence: true
  validates :rate, presence: true
end
