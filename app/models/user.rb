class User < ApplicationRecord
  has_many :UserCircles
  has_many :circle, through: :UserCircles
end
