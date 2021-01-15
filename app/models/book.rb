class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_one_attached :image
  belongs_to :user
  validates :title, presence: true, length:{ maximum: 50}
  validates :author, presence: true, length:{ maximum: 30}
end
