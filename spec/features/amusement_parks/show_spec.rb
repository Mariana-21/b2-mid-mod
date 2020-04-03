require 'rails_helper'

describe "As a visitor", type: :feature do 
    it "can see the amusement parks rides and admission fee" do 
        amusement_park_1 = AmusementPark.create(name: "Elitch Gardens",
                                                admission: "$50",
                                                ride_1: "Mind Eraser",
                                                ride_2: "Half Pipe",
                                                ride_3: "Tower of Doom")
        amusement_park_2 = AmusementPark.create(name: "Lakeside",
                                                admission: "$30",
                                                ride_1: "Cyclone Coaster",
                                                ride_2: "Wild Chipmunk",
                                                ride_3: "Hurricane")
        amusement_park_3 = AmusementPark.create(name: "Six Flags Magic Mountain",
                                                admission: "$75",
                                                ride_1: "Goliath",
                                                ride_2: "Superman",
                                                ride_3: "West Coast Racers")

        visit "/amusementparks/#{amusement_park_1.id}"
        
        expect(page).to have_content("#{amusement_park_1.name}")
        expect(page).to have_content("#{amusement_park_1.admission}")
        expect(page).to have_content("#{amusement_park_1.ride_1}")
        expect(page).to have_content("#{amusement_park_1.ride_2}")
        expect(page).to have_content("#{amusement_park_1.ride_3}")

        visit "/amusementparks/#{amusement_park_2.id}"

        expect(page).to have_content("#{amusement_park_2.name}")
        expect(page).to have_content("#{amusement_park_2.admission}")
        expect(page).to have_content("#{amusement_park_2.ride_1}")
        expect(page).to have_content("#{amusement_park_2.ride_2}")
        expect(page).to have_content("#{amusement_park_2.ride_3}")

        visit "/amusementparks/#{amusement_park_3.id}"

        expect(page).to have_content("#{amusement_park_3.name}")
        expect(page).to have_content("#{amusement_park_3.admission}")
        expect(page).to have_content("#{amusement_park_3.ride_1}")
        expect(page).to have_content("#{amusement_park_3.ride_2}")
        expect(page).to have_content("#{amusement_park_3.ride_3}")
    end
end