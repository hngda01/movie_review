class ReviewAction < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  belongs_to :review, foreign_key: "review_id"

  validates :review_id, presence: true
  validates :user_id, presence: true
  validates :action, presence: true

  enum action: {unlike: 0, like: 1}
end
