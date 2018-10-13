class Review < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  belongs_to :movie, foreign_key: "movie_id"

  has_many :review_actions, foreign_key: "review_id"
  has_many :maked_action_users, through: :review_actions, source: :user

  validates :user_id, presence: true
  validates :movie_id, presence: true
end
