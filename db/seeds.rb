puts "Deleting All data..."
Adopter.destroy_all
Shelter.destroy_all
Pet.destroy_all

puts "Seeding Adopters..."

adopter_1 = Adopter.create!(first_name: "Troy", last_name: "Barnes")
adopter_2 = Adopter.create!(first_name: "Abed", last_name: "Nadir")
adopter_3 = Adopter.create!(first_name: "Annie", last_name: "Edison")

puts "Seeding Shelters..."

shelter_1 = Shelter.create!(name: "PETS'R'US", address: "123 N Main Street")
shelter_2 = Shelter.create!(name: "Whole Pets", address: "234 S Main Street")
shelter_3 = Shelter.create!(name: "Ace Petsware", address: "345 1st Ave")

puts "Seeding Pets..."

pet_1 = Pet.create!(name: "Squirtle", age_in_years: 1, species: "turtle", adopted?: "true", shelter_id: 1, adopter_id: adopter_1.id)
pet_2 = Pet.create!(name: "Pidgey", age_in_years: 2, species: "bird", adopted?: "false", shelter_id: 1, adopter_id: nil)
pet_3 = Pet.create!(name: "Pikachu", age_in_years: 3, species: "mouse", adopted?: "true", shelter_id: 2, adopter_id: adopter_2.id)
pet_4 = Pet.create!(name: "Raichu", age_in_years: 4, species: "mouse", adopted?: "true", shelter_id: 2, adopter_id: adopter_2.id)
pet_5 = Pet.create!(name: "Snubbull", age_in_years: 1, species: "dog", adopted?: "true", shelter_id: 3, adopter_id: adopter_3.id)
pet_6 = Pet.create!(name: "Granbull", age_in_years: 2, species: "dog", adopted?: "true", shelter_id: 3, adopter_id: adopter_3.id)

puts "Seeding done!"