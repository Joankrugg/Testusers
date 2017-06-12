class AddStructureReferenceToShowMakers < ActiveRecord::Migration[5.0]
  def change
    add_reference :show_makers, :structure, foreign_key: true
  end
end
