class Contact < ApplicationRecord
  belongs_to :user
  has_many :phones
  has_many :emails
  has_many :address
end
