Random.srand(1337) # seed the random number generator, for same results every time

# Make owners and their pets
patients_per_owner_distribution = [1,1,1,1,1,1,1,2,2,3] # most ppl have 1 pet
<<<<<<< HEAD
belongings_list = %w[Bone Treat Toy]
diet_list = ["Mature", "Hypo-Allergenic Salmon", "Rabbit & Venison", "Owner's Food"]
stay_year = 2015
stay_minute = [0, 15, 30, 45]
remarks_list = ["Stresses immensely upon arrival, use muzzle", "No legs", 
"Only eats from owner's bowl", "Use holy water 2x per day on head"]
=======
species_list = %w[Cat, Dog, Hamster]
belongings_list = %w[Bone, Treat, Toy]
>>>>>>> master
50.times do
  the_new_owner = Owner.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
<<<<<<< HEAD
    email: "placeholder@fornow.com",
 
=======
    email: "placeholder@fornow.com"    
>>>>>>> master
  )
  the_new_owner.email = "owner_#{the_new_owner.id}@internet.com"
  the_new_owner.save

  num_patients = patients_per_owner_distribution.sample
  num_patients.times do
  the_new_patient = Patient.create(
      name: Faker::Name.first_name,
      weight: Faker::Name.first_name,      
      breed: Faker::Lorem.sentence(3),
      owner_id: the_new_owner.id,
<<<<<<< HEAD
      belongings: belongings_list.sample,
      diet: diet_list.sample
    )
  
  random_month = rand(1..12)
  random_day = rand(1..28)
  random_minute = stay_minute.sample
  stay_length = rand(1..7)

  Stay.create(
    is_current: true,
    sch_check_in_dt: check_in = DateTime.new(stay_year, random_month, 
      random_day, random_month, random_minute),
    sch_check_out_dt: check_in + stay_length.days,
    patient_id: the_new_patient.id,
    remarks: remarks_list.sample
=======
      belongings: belongings_list.sample
>>>>>>> master
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
