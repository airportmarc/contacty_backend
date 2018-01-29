class CreateAddress < ActiveRecord::Migration[5.1]
  def change
    create_table :address do |t|
      t.belongs_to :contact
      t.references :type
      t.string :apt
      t.string :address
      t.string :city
      t.string :postal
      t.string :state
      t.string :country
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end
