class User < ApplicationRecord
  has_many :circles
  has_one :contact

end
