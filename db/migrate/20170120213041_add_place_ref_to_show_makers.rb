class AddPlaceRefToShowMakers < ActiveRecord::Migration[5.0]
  def change
    add_reference :show_makers, :place, foreign_key: true
  end
end
