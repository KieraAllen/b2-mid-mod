# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AmusementPark.destroy_all
Mechanic.destroy_all
Ride.destroy_all

#Amusement Parks

#Mechanics
mechanic_sam = Mechanic.create!(name: "Sam Mills",
                      years_experience: "10"
                      )

mechanic_kara = Mechanic.create!(name: "Kara Smith",
                      years_experience: "11"
                      )
