require 'rails_helper'

describe "As a user", type: :feature do 
    it "can go to mechanics show page and see the years of experience and rides they work on 
    as well as a form to add a ride to their workload" do 
     mech_1 = Mechanic.create(   name: "Jerry Hill",
                                    experience: "15 years")
    mech_2 = Mechanic.create(   name: "Dwight Shrute",
                                    experience: "10 years")
    mech_3 = Mechanic.create(   name: "Rachel Green",
                                    experience: "5 years")

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


# Story 3
# As a user, 
# When I go to a mechanics show page 
# I see their name, years of experience, and names of all rides they’re working on
# And I also see a form to add a ride to their workload
# When I fill in that field with an id of an existing ride and hit submit
# I’m taken back to that mechanics show page
# And I see the name of that newly added ride on this mechanics show page
 
# Ex: 
 
# Mechanic: Kara Smith
# Years of Experience: 11
 
# Current rides they’re working on: 
# The Frog Hopper 
# Fahrenheit 
# The Kiss Raise
 
# Add a ride to workload: 
#  _pretent_this_is_a_textfield_
#                        Submit
 
