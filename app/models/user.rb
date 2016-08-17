class User < ActiveRecord::Base
  include Authentication
  has_many :palettes
end
