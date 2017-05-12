require("spec_helper")

describe(Store) do
  it("has many shoes") do
    test_store = Store.create({:name => "Foot Locker", :middle_id => nil})
    test_brand1 = Brand.create({:name => "Nike", :price => 50})
    test_brand2 = Brand.create({:name => "Puma", :price => 20})
    test_store.brands.push([test_brand1, test_brand2])
    expect(test_store.brands()).to(eq([test_brand1,test_brand2]))
  end
end
