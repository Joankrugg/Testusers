class AddAgeToBands < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :age, :string
  end
end
