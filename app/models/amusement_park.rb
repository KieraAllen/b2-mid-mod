class AmusementPark < ApplicationRecord

  has_many :rides

  def average_ride_rating
    Ride.average(:thrill_rating)
  end
end
