# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    mech_1 = Mechanic.create(   name: "Jerry Hill",
                                    experience: "15 years")
    mech_2 = Mechanic.create(   name: "Dwight Shrute",
                                    experience: "10 years")
    mech_3 = Mechanic.create(   name: "Rachel Green",
                                    experience: "5 years")
