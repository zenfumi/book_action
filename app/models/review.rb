class Review < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  #カラムが確定したらバリデーションを追加する。
end
