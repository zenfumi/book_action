class Like < ApplicationRecord
  validates :user_id,presence:true
  validates :review_id,presence:true
  belongs_to :user
  belongs_to :review
  validates_uniqueness_of :review_id, scope: :user_id
end
