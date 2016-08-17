class AddUserToPalettes < ActiveRecord::Migration
  def change
    add_reference :palettes, :user, index: true, foreign_key: true
  end
end
