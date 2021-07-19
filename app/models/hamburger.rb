class Hamburger < ApplicationRecord
  has_many :reviews
  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :brand, presence: true, length: { minimum: 3, maximum: 100 }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 6, maximum: 200 }
end
