class Store < ActiveRecord::Base
  has_many :middles
  has_many :brands, through: :middles
end
