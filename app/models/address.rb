class Address < ApplicationRecord
  self.table_name = "Address"
  belongs_to :contact_info
  has_one :contact_type, foreign_key: true
end
