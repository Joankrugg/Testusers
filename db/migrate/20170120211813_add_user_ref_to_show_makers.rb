class AddUserRefToShowMakers < ActiveRecord::Migration[5.0]
  def change
    add_reference :show_makers, :user, foreign_key: true
  end
end
