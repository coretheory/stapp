class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :pwned_password

  extend FriendlyId
  friendly_id :username, use: :slugged

  has_many :posts
  has_many :projects

  has_one_attached :avatar

  validates_uniqueness_of :username
  validates_presence_of :username
end
