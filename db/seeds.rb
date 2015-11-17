Random.srand(1337) # seed the random number generator, for same results every time

# Make owners and their pets
patients_per_owner_distribution = [1,1,1,1,1,1,1,2,2,3] # most ppl have 1 pet
species_list = %w[Cat, Dog, Hamster]
belongings_list = %w[Big Bone, Owner's Treat, Stuffed Toy]
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
      species: species_list.sample,
      breed: Faker::Lorem.sentence(3),
      owner_id: the_new_owner.id
      belongings: belongings_list.sample
    )
  end
end

# Make 2 users
def create_user (a_first_name, a_last_name)
  user_n = User.create(
    email: "#{a_first_name}@internet.com",
    first_name: a_first_name,
    last_name: a_last_name
  )
end

create_user('George', 'Washignton')
create_user('John', 'Adams')

# TODO: seed some Runns and Wards, preferably hardcoded with typical
# data... change the model if necessary.

# TODO: seed some Stays, preferably with typical data... change the
# model if necessary.
