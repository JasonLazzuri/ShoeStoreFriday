require("spec_helper")

describe(Store) do
  it("will check to see if the store names are capitalized") do
    test_store = Store.create({:name => "foot locker", :middle_id => nil})
    expect(test_store.name).to(eq('Foot Locker'))
  end
end
