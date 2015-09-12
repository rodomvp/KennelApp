class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email

      t.timestamps null: false
    end
  end
end
