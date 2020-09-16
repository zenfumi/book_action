class Book < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { maximum: 50}
  validates :author, presence: true
  validates :author, length: { maximum: 30}
  has_one_attached :image
end
