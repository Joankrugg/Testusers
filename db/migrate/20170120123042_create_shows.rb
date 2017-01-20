class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.integer :show_price
      t.string :facebook_event
      t.string :status

      t.timestamps
    end
  end
end
