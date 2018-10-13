class Movie < ApplicationRecord
  has_many :reviews, foreign_key: "movie_id"
  has_many :reviewed_users, through: :reviews, source: :user
  has_many :rates, foreign_key: "movie_id"
  has_many :rated_users, through: :rates, source: :user
  has_many :movie_characters, foreign_key: "movie_id"
  has_many :characters, through: :movie_characters, source: :actor

  validates :name, presence: true, length: {maximum: 50}
  validates :picture, presence: true
  validates :info, presence: true, length: {maximum: 100}
  validates :date, presence: true
end
