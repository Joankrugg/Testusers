class CreateShowMakers < ActiveRecord::Migration[5.0]
  def change
    create_table :show_makers do |t|
      t.boolean :transport
      t.text :available_equipment

      t.timestamps
    end
  end
end
