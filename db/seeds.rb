# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ["chinese", "italian", "japanese", "french", "belgian"]

Restaurant.destroy_all
puts "Cleaning DB"

resto1 = Restaurant.create!(name: 'Bistrot Régent', phone_number: '0693 67 89 34', address: 'Bordeaux', category: 'french')
resto2 = Restaurant.create!(name: '3Brasseurs', phone_number: '0262 38 76 34', address: 'St-Pierre', category: 'belgian')
resto3 = Restaurant.create!(name: 'Sushi', phone_number: '0790 46 40 42', address: 'Tokyo', category: 'japanese')
resto4 = Restaurant.create!(name: 'Chez Jerome', phone_number: '0293 90 76 32', address: 'Tampon', category: 'chinese')
resto5 = Restaurant.create!(name: 'Vapiano', phone_number: '0282 98 76 30', address: 'St-Denis', category: 'italian')

puts "Adding restaurants"
