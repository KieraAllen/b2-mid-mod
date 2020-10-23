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

# Amusement Parks
hershey_park = AmusementPark.create!(name: "Hershey Park",
                                     admission_price: "$50.00"
                                     )
water_world = AmusementPark.create!(name: "Water World",
                                    admission_price: "$45.00"
                                    )

# Rides
lightning = Ride.create!(name: "Lightning Racer",
                         thrill_rating: 8,
                         amusement_park_id: hershey_park.id
                         )

storm = Ride.create!(name: "Storm Runner",
                         thrill_rating: 7,
                         amusement_park_id: hershey_park.id
                         )

bear = Ride.create!(name: "The Great Bear",
                         thrill_rating: 5,
                         amusement_park_id: hershey_park.id
                         )

# Mechanics
mechanic_sam = Mechanic.create!(name: "Sam Mills",
                                years_experience: "10"
                                )

mechanic_kara = Mechanic.create!(name: "Kara Smith",
                                 years_experience: "11"
                                 )
