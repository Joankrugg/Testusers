class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :place_name
      t.string :place_address
      t.string :place_facebook
      t.integer :capacity
      t.string :place_photo
      t.string :place_category

      t.timestamps
    end
  end
end
