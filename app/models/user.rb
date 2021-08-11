class User < ApplicationRecord
  has_many :reviews
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :username, 
    presence: true,
    uniqueness: { case_sensitive: false },
    length: { minimum: 3, maximum: 26 }
  validates :email, 
    presence: true,
    uniqueness: { case_sensitive: false },
    length: { minimum: 6, maximum: 105 },
    format: { with: VALID_EMAIL_REGEX }
  has_secure_password
end