class CreateGuitarLists < ActiveRecord::Migration
  def change
    create_table :guitar_lists do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string :serial_number
      t.string :color

      t.timestamps null: false
    end
  end
end
