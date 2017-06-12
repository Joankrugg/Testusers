class AddTransportAutonomyToBands < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :transport_autonomy, :boolean
  end
end
