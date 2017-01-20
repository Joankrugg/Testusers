class AddBandRefToShowMakers < ActiveRecord::Migration[5.0]
  def change
    add_reference :show_makers, :band, foreign_key: true
  end
end
