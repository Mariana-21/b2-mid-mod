require 'rails_helper'

describe "As a visitor", type: :feature do 
    it "can see all amusement parks" do 
        amusement_park_1 = AmusementPark.create(name: "Elitch Gardens",
                                                 admission: "$50")
        amusement_park_2 = AmusementPark.create(name: "Lakeside",
                                                 admission: "$30")
        amusement_park_3 = AmusementPark.create(name: "Six Flags Magic Mountain",
                                                 admission: "$75")

        visit "/amusementparks"
        
        expect(page).to have_content("#{amusement_park_1.name}")
        expect(page).to have_content("#{amusement_park_1.admission}")
        expect(page).to have_content("#{amusement_park_2.name}")
        expect(page).to have_content("#{amusement_park_2.admission}")
        expect(page).to have_content("#{amusement_park_3.name}")
        expect(page).to have_content("#{amusement_park_3.admission}")
    end
end