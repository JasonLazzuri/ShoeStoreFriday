require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get ('/stores') do
  @store = Store.all
  erb(:stores)
end

get ('/brands') do
  @brands = Brand.all()

  erb(:brands)
end

post ('/brands') do
  brand_name = params.fetch('brand_name')
  brand_price = params.fetch('brand_price')
  @brands = Brand.new({:name => brand_name, :price =>brand_price})
  if @brands.save()
  redirect("/brands")
  else
    erb(:errors)
  end
end
