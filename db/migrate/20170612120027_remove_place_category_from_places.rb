class RemovePlaceCategoryFromPlaces < ActiveRecord::Migration[5.0]
  def change
    remove_column :places, :place_category, :string
  end
end
