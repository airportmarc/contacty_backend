class Contact < ApplicationRecord
  belongs_to :user
  has_many :phones
  has_many :emails
end
