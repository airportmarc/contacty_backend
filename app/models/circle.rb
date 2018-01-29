class Circle < ApplicationRecord
  has_many :UserCircles
  has_many :user, through: :UserCircles
end
