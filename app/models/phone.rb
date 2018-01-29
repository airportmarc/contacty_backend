class Phone < ApplicationRecord
  belongs_to :contact_info
  has_one :contact_type, foreign_key: true
end
