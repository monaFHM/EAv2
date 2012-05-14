# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.create(name: 'FR', img_url: 'fr.png')
Country.create(name: 'EN', img_url: 'gb.png')
Country.create(name: 'DE', img_url: 'de.png')

Genre.create(name: 'Music')
Genre.create(name: 'Entertainment')

