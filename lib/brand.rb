class Brand < ActiveRecord::Base
  has_many :middles
  has_many :stores, through: :middles
  validates(:name, :uniqueness => {case_sensitive: false}, :presence => true, :length => {:maximum => 100})
  before_save(:upcase_name)

  private
    define_method(:upcase_name)do
      self.name = (name().capitalize!())
  end
end
