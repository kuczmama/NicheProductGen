# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
niches = File.new("Niche.txt", "r")
while (niche = niches.gets)
	Niche.create(niche: niche)
end

products = File.new("Products.txt", "r")
while (product = products.gets)
	Product.create(product: product)
end

