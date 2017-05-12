class Middle < ActiveRecord::Base
  belongs_to :brands
  belongs_to :stores
end
