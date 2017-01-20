class AddPlaceRefToAvailabilities < ActiveRecord::Migration[5.0]
  def change
    add_reference :availabilities, :place, foreign_key: true
  end
end
