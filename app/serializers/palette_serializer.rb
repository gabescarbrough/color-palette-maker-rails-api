class PaletteSerializer < ActiveModel::Serializer
  attributes :id, :palette_name, :color1, :color2, :color3, :color4, :color5, :user_id
end
