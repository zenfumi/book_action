class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments
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

## RSpec 動作テスト
  attr_accessor :name, :age

  def initialize(name: ,age:)
    self.name = name
    self.age = age
  end

  def disp_name
    if self.age > 19
      return "#{self.name}さん"
    elsif self.age > 10
      return "#{self.name}君"
    elsif self.age > 0
      return "#{self.name}ちゃん"
    else
      return "不正な値です"
    end
  end
end
