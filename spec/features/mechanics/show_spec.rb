# As a user,
# When I go to a mechanics show page
# I see their name, years of experience, and names of all rides they’re working on
# And I also see a form to add a ride to their workload
# When I fill in that field with an id of a ride that exists in the database
# And I click submit
# I’m taken back to that mechanics show page
# And I see the name of that newly added ride on this mechanics show page
# Ex:
# Mechanic: Kara Smith
# Years of Experience: 11
# Current rides they’re working on:
# The Frog Hopper
# Fahrenheit
# The Kiss Raise
# Add a ride to workload:
# _pretend_this_is_a_textfield_
#                       Submit

require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "when I visit a mechanic's show page" do
    it "can see mechanic's name, years of experience, and names of all rides they work on" do
      water_world = AmusementPark.create!(name: "Water World",
                                          admission_price: "$45.00"
                                          )

      mechanic_kara = Mechanic.create!(name: "Kara Smith",
                                      years_experience: "11"
                                      )

      frog = Ride.create!(name: "The Frog Hopper",
                          thrill_rating: 6,
                          amusement_park_id: water_world.id
                          )

      hothothot = Ride.create!(name: "Fahrenheit",
                               thrill_rating: 9,
                               amusement_park_id: water_world.id
                               )

      kiss = Ride.create!(name: "The Kiss Raise",
                               thrill_rating: 2,
                               amusement_park_id: water_world.id
                               )

      MechanicRide.create!(mechanic_id: mechanic_kara.id,
                            ride_id: frog.id)

      MechanicRide.create!(mechanic_id: mechanic_kara.id,
                            ride_id: hothothot.id)

      MechanicRide.create!(mechanic_id: mechanic_kara.id,
                            ride_id: kiss.id)

      visit "/mechanics/#{mechanic_kara.id}"

      within("#rides") do
        expect(page).to have_content(frog.name)
        expect(page).to have_content(hothothot.name)
        expect(page).to have_content(kiss.name)
      end

      expect(page).to have_content("Current Rides:")
      expect(page).to have_content("Mechanic: #{mechanic_kara.name}")
      expect(page).to have_content("Years of Experience: #{mechanic_kara.years_experience}")
    end
  end
end
