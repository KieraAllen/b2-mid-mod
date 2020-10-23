# As a visitor,
# When I visit an amusement park’s show page
# I see the name and price of admissions for that amusement park
# And I see the names of all the rides that are at that park
# And I see the average thrill rating of this amusement park’s rides
# Ex: Hershey Park
#    Admissions: $50.00
#
#    Rides:
#           1. Lightning Racer
#           2. Storm Runner
#           3. The Great Bear
#
#    Average Thrill Rating of Rides: 7.8/10

require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "when I visit an amusement park's show page" do
    it "can see the park's name and admissions price" do
      hershey_park = AmusementPark.create!(name: "Hershey Park",
                                           admission_price: "$50.00"
                                           )


      visit "/amusement_parks/#{hershey_park.id}"

      expect(page).to have_content(hershey_park.name)
      expect(page).to have_content("Admissions: #{hershey_park.admission_price}")
    end
  end
end
