class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  has_many :reviews, foreign_key: "user_id"
  has_many :reviewed_movies, through: :reviews, source: :movie
  has_many :rates, foreign_key: "user_id"
  has_many :rated_movies, through: :rates, source: :movie
  has_many :review_actions, foreign_key: "user_id"
  has_many :maked_action_reviews, through: :review_actions, source: :review

  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}

  enum role: {admin: 0, member: 1}
end
