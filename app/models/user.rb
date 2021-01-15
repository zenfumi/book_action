class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments
  has_many :books, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # confirmableは現在オフとしており、記述していない
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :image, ImageUploader

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
    user.password = SecureRandom.urlsafe_base64
    user.confirmed_at = Time.now # Confirmable を使用している場合は必要
    end
  end

#バリデーション
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  # validates :username, presence:true, length: {maximum: 30}
  # validates :email,
  #           presence:true,
  #           length: { maximum: 255 },
  #           format: { with: VALID_EMAIL_REGEX }

end
