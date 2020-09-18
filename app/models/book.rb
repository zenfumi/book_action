class Book < ApplicationRecord
  has_one_attached :image
  validates :title, presence: true
  validates :title, length: { maximum: 50}
  validates :author, presence: true
  validates :author, length: { maximum: 30}
  validates :image, presence: true
end
