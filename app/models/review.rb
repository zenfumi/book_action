class Review < ApplicationRecord
  has_many_attached :image
  belongs_to :user
  belongs_to :book
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :memo, presence: true, length: { maximum: 140 }
  validates :purpose, presence: true
  validates :plan_now, presence: true
  validates :plan_future, presence: true
end
