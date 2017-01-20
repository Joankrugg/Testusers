class AddGenreRefToBands < ActiveRecord::Migration[5.0]
  def change
    add_reference :bands, :genre, foreign_key: true
  end
end
