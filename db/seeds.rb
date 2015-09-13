# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# We'll make 50 owners, each with either 1, 2, or 3 pets.
# And use the Faker gem to make random names, etc.

Random.srand(1337) # seed the random number generator, for same results every time
patients_per_owner_distribution = [1,1,1,1,1,1,1,2,2,3] # most ppl have 1 pet

50.times do
  the_new_owner = Owner.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    email: "placeholder@fornow.com"
  )
  the_new_owner.email = "owner_#{the_new_owner.id}@internet.com"
  the_new_owner.save

  num_patients = patients_per_owner_distribution.sample
  num_patients.times do
    Patient.create(
      name: Faker::Name.first_name,
      weight: Faker::Name.first_name,
      species: ["Cat", "Dog", "Hamster"].sample,
      breed: Faker::Lorem.sentence(3),
      owner_id: the_new_owner.id
    )
  end
end
