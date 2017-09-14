class User < ApplicationRecord
  has_many :parties


  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_secure_password

end