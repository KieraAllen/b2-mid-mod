require 'rails_helper'

describe MechanicRide, type: :model do
  describe "relationships" do
    it { should belong_to :mechanic }
    it { shoudl belong_to :ride }
  end
end
