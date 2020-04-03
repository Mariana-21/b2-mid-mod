require 'rails_helper'

describe "As a user", type: :feature do
    it "can see each mechanic and their experience" do 
        mech_1 = Mechanic.create(   name: "Jerry Hill",
                                    experience: "15 years")
        mech_2 = Mechanic.create(   name: "Dwight Shrute",
                                    experience: "10 years")
        mech_3 = Mechanic.create(   name: "Rachel Green",
                                    experience: "5 years")
        
        visit "/mechanics"

        expect(page).to have_content("#{mech_1.name}")
        expect(page).to have_content("#{mech_1.experience}")
        expect(page).to have_content("#{mech_2.name}")
        expect(page).to have_content("#{mech_2.experience}")
        expect(page).to have_content("#{mech_3.name}")
        expect(page).to have_content("#{mech_3.experience}")
    end
end
