# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

newyork = City.create(name: "New York, NY", image_url: 'http://www.stajets.com/wp-content/uploads/2017/03/NewYorkCity.jpg')
boston = City.create(name: "Boston, MA", image_url: 'https://assets3.thrillist.com/v1/image/2442752/size/tmg-facebook_social.jpg')
seattle = City.create(name: "Seattle, WA", image_url: 'https://www.mckinsey.com/~/media/McKinsey/Locations/North%20America/West%20Coast/Seattle/WCO_Seattle_hero_GettyImages-479505626_rf_1536x768_crop-right.ashx?mw=1536&car=546:205&cpx=Right&cpy=Center')
sanfran = City.create(name: "San Francisco, CA", image_url: 'https://www.mckinsey.com/~/media/McKinsey/Locations/North%20America/West%20Coast/San%20Francisco/WCO_SanFrancisco_hero_GettyImages-476881195_1536x768_crop-left_2.ashx?mw=1536&car=546:205&cpx=Left&cpy=Center')
