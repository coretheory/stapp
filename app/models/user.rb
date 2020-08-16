class User < ApplicationRecord
  before_save { self.username = username.downcase }

  extend FriendlyId
  friendly_id :username, use: :slugged
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :validatable, :pwned_password

  has_many :posts
  has_many :projects

  has_one_attached :avatar

  validates_uniqueness_of :username
  validates_presence_of :username
end
