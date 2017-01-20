class AddShowRefToShowMakers < ActiveRecord::Migration[5.0]
  def change
    add_reference :show_makers, :show, foreign_key: true
  end
end
