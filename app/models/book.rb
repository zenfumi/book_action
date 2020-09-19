class Book < ApplicationRecord
  has_one_attached :image
  validates :title, presence: true, length:{ maximum: 50}
  validates :author, presence: true, length:{ maximum: 30}
  validates :image, presence: true
end
