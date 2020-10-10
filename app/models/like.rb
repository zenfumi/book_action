class Like < ApplicationRecord
  validates :user_id,presense:true
  validates :review_id,presense:true
  belong_to :user
  belong_to :review
end
