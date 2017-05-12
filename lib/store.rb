class Store < ActiveRecord::Base
  has_many :middles
  has_many :brands, through: :middles
  validates(:name, {:presence => true, :length => {:maximum => 100 }})
  before_save(:upcase_name)

  scope(:not_done, -> do
  where({:done => false})
  end)

  private
    define_method(:upcase_name)do
      self.name = name().split.each(){|word| word.capitalize!}.join(' ')
  end
end
