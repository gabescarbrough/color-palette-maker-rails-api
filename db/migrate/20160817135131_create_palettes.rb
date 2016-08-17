class CreatePalettes < ActiveRecord::Migration
  def change
    create_table :palettes do |t|
      t.string :palette_name
      t.string :color1
      t.string :color2
      t.string :color3
      t.string :color4
      t.string :color5

      t.timestamps null: false
    end
  end
end
