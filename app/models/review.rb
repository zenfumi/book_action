class Review < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  belongs_to :book
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :memo, presence: true, length: { maximum: 140 }
  validates :purpose, presence: true, length: { maximum: 100 }
  validates :plan_now, presence: true, length: { maximum: 100 }
  validates :plan_future, presence: true, length: { maximum: 100 }
end
