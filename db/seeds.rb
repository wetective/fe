# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

data = JSON.parse( File.read("./db/locations/fbi_field_offices.json"), symbolize_names: true )
data[:markers].map do |loc|
  Location.create!({
    lat: loc[:lat], 
    lng: loc[:lng], 
    city: loc[:city], 
    address: loc[:address], 
    url: loc[:url]
  })
end