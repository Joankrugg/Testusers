class AddUserRefToBands < ActiveRecord::Migration[5.0]
  def change
    add_reference :bands, :user, foreign_key: true
  end
end
