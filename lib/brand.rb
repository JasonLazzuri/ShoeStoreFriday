class Brand < ActiveRecord::Base
  has_many :middles
  has_many :stores, through: :middles
  validates(:name, {:presence => true, :uniqueness => true, :length => {:maximum => 100 }})
  before_save(:upcase_name)

  scope(:not_done, -> do
  where({:done => false})
  end)

  private
    define_method(:upcase_name)do
      self.name = (name().capitalize!())
  end
end
