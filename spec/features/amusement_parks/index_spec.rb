require 'rails_helper'

describe "As a visitor", type: :feature do 
    it "can see all amusement parks" do 
        amusement_park_1 = AmusementPark.create(name: "Elitch Gardens",
                                                 admissions: "$50")
        amusement_park_2 = AmusementPark.create(name: "Lakeside",
                                                 admissions: "$30")
        amusement_park_3 = AmusementPark.create(name: "Six Flags Magic Mountain",
                                                 admissions: "$75")

        visit "/amusementparks"
        save_and_open_page

        expect(page).to have_content("#{amusement_park_1.name}")
        expect(page).to have_content("#{amusement_park_1.admissions}")
        expect(page).to have_content("#{amusement_park_2.name}")
        expect(page).to have_content("#{amusement_park_2.admissions}")
        expect(page).to have_content("#{amusement_park_3.name}")
        expect(page).to have_content("#{amusement_park_3.admissions}")
    end
end