class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
     # t.integer "id" < rails will do this automatically
      t.string "name"
      t.string "city"
      t.string "state"
      t.string "url"
      t.string "phone"

      t.timestamps
    end
  end
end
