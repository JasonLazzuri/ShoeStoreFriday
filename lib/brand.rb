class Brand < ActiveRecord::Base
  has_many :middles
  has_many :stores, through: :middle
end
