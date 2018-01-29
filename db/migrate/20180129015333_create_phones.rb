class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :number
      t.belongs_to :contact
      t.references :type

      t.timestamps
    end
  end
end
