class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :pwned_password

  has_many :posts

  has_one_attached :avatar

  validates_uniqueness_of :username
  validates_presence_of :username
end
