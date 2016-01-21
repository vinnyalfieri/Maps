# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
paris = City.new
paris.name = "Paris"
paris.lat = '48.8567'
paris.long = '2.3508'
paris.save

Paris.new.load_paris