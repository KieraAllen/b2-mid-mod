require 'rails_helper'

describe AmusementPark, type: :model do
  describe "relationships" do
    it { should have_many :rides }
  end

  describe "instance methods" do
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
    it "#average_ride_rating" do
      expect(@hershey_park.average_ride_rating).to eq(6.7)
    end
  end
end
