class AddInvolvementToBands < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :involvement, :text
  end
end
