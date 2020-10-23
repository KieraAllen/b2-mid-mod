require 'rails_helper'

RSpec.describe "As a user" do
  describe "when I visit the mechanics index page" do
    it "can see a header saying 'All Mechanics' along with all list of mechanics' names and years of experience" do
      mechanic_sam = Mechanic.create!(name: "Sam Mills",
                            years_experience: "10"
                            )

      mechanic_kara = Mechanic.create!(name: "Kara Smith",
                            years_experience: "11"
                            )

      visit "/mechanics"

      expect(page).to have_content("All Mechanics")
      expect(page).to have_content("#{mechanic_sam.name} - #{mechanic_sam.years_experience} years of experience")
      expect(page).to have_content("#{mechanic_kara.name} - #{mechanic_kara.years_experience} years of experience")
    end
  end
end
