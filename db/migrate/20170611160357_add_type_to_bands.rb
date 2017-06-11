class AddTypeToBands < ActiveRecord::Migration[5.0]
  def change
    add_reference :bands, :type, foreign_key: true
  end
end
