class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :email
      t.belongs_to :contact
      t.references :type

      t.timestamps
    end
  end
end
