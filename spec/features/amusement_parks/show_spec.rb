require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "when I visit an amusement park's show page" do
    before :each do
      @hershey_park = AmusementPark.create!(name: "Hershey Park",
                                            admission_price:  "$50.00"
                                            )

      @lightning = Ride.create!(name: "Lightning Racer",
                                thrill_rating: 8,
                                amusement_park_id: @hershey_park.id
                                )

      @storm = Ride.create!(name: "Storm Runner",
                            thrill_rating: 7,
                            amusement_park_id: @hershey_park.id
                            )

      @bear = Ride.create!(name: "The Great Bear",
                           thrill_rating: 5,
                           amusement_park_id: @hershey_park.id
                           )
    end
    it "can see the park's name and admissions price" do

      visit "/amusement_parks/#{@hershey_park.id}"

      expect(page).to have_content(@hershey_park.name)
      expect(page).to have_content("Admissions: #{@hershey_park.admission_price}")
    end

    it "can see the names of all the rides and the average thrill rating of the rides" do

      visit "/amusement_parks/#{@hershey_park.id}"

      expect(page).to have_content("Rides:")
      expect(page).to have_content(@lightning.name)
      expect(page).to have_content(@storm.name)
      expect(page).to have_content(@bear.name)

      expect(page).to have_content("Average Thrill Rating of Rides: #{@hershey_park.average_ride_rating.to_f.round(1)}/10")
    end
  end
end
