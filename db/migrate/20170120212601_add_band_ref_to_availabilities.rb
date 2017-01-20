class AddBandRefToAvailabilities < ActiveRecord::Migration[5.0]
  def change
    add_reference :availabilities, :band, foreign_key: true
  end
end
