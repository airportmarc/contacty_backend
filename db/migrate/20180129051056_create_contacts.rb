class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.references :user

      t.timestamps

      t.timestamps
    end
  end
end
