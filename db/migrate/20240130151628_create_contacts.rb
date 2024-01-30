class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string "first_name"
      t.string "last name"
      t.string "email"
      t.integer "comapny_id"

      t.timestamps
    end
  end
end
