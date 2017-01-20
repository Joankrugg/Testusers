class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :band_name
      t.string :rehearsal_address
      t.string :band_facebook
      t.integer :members_number
      t.string :band_photo
      t.boolean :band_mersh
      t.integer :set_time

      t.timestamps
    end
  end
end
