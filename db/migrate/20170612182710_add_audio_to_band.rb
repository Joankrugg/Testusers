class AddAudioToBand < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :audio, :string
  end
end
