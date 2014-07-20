class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :county
      t.string :postcode
      t.integer :user_id

      t.timestamps
    end
  end
end
