# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
print "Destroying everything"
Type.destroy_all
Genre.destroy_all
Structure.destroy_all

print "Creating types"
Type.create({ name: 'Reprises' })
Type.create({ name: 'Compos' })
Type.create({ name: 'Mixte' })
puts "      💥"

print "Creating genres"
Genre.create({ name: 'Rock' })
Genre.create({ name: 'Electronique' })
Genre.create({ name: 'Hip Hop' })
puts "      💥"

print "Creating structures"
Structure.create({ name: 'Association' })
Structure.create({ name: 'Oneself' })
Structure.create({ name: 'band' })
Structure.create({ name: 'Firm' })
puts "      💥"
