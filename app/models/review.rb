class Review < ApplicationRecord
  belongs_to :hamburger
  belongs_to :user
end
