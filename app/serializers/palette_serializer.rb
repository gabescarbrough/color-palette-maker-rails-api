class PaletteSerializer < ActiveModel::Serializer
  attributes :id, :palette_name, :color1, :color2, :color3, :color4, :color5
  has_one :user
end
