class User < ApplicationRecord
  before_save { self.username = username.downcase }
  before_save { self.email = email.downcase }

  extend FriendlyId
  friendly_id :username, use: :slugged
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :lockable,
         :recoverable, :rememberable, :validatable, :pwned_password

  has_many :posts
  has_many :projects

  has_one_attached :avatar

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
