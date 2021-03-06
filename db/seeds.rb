Random.srand(1337) # seed the random number generator, for same results every time

# Make owners and their pets

patients_per_owner_distribution = [1,1,1,1,1,1,1,2,2,3] # most ppl have 1 pet
belongings_list = %w[Bone Treat Toy]
diet_list = ["Mature", "Hypo-Allergenic Salmon", "Rabbit & Venison", "Owner's Food"]
stay_year = 2015
stay_minute = [0, 15, 30, 45]
remarks_list = ["Stresses immensely upon arrival, use muzzle", "No legs",
"Only eats from owner's bowl", "Use holy water 2x per day on head"]
species_list = %w[Cat, Dog, Hamster]
belongings_list = %w[Bone, Treat, Toy]
breeds_list = [
  'Labrador Retriever',
  'German Shepherd',
  'Golden Retriever',
  'Bulldog',
  'Beagle',
  'Yorkshire Terrier',
  'Poodle',
  'Boxer',
  'French Bulldog',
  'Rottweiler',
  'Dachshund',
  'German Shorthaired Pointer',
  'Siberian Huskie',
  'Doberman Pinscher',
  'Great Dane',
  'Miniature Schnauzer',
  'Shih Tzu',
  'Australian Shepherd',
  'Cavalier King Charles Spaniel',
  'Pomeranian',
  'Shetland Sheepdog'
]

# Creates Wards with Runns
MEDIAN_RUNNS = 6
ward_sizes = %w[Small Medium Large]
(1..8).to_a.each do |i|
  the_new_ward = Ward.create(
    ident: ("Ward #{i}"))

  num_runs = MEDIAN_RUNNS + (-1..1).to_a.sample
  num_runs.times do |j|
    r = the_new_ward.runns.create(
      ident: ("Run #{i}.#{j}"),
      size: ward_sizes.sample)
  end
end

20.times do

  # Make owners
  the_new_owner = Owner.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    email: "placeholder@fornow.com"
  )
  the_new_owner.email = "owner_#{the_new_owner.id}@internet.com"
  the_new_owner.save

  dog_pics = ["http://animaliaz-life.com/data_images/dog/dog6.jpg", 
    "http://www.arabwp.com/wp-content/uploads/2012/09/dog-3.jpg", 
    "http://animaliaz-life.com/data_images/dog/dog4.jpg",
    "https://s.graphiq.com/sites/default/files/stories/t4/15_Tiniest_Dog_Breeds_1718_3083.jpg",
    "https://www.petfinder.com/wp-content/uploads/2012/11/147083304-dogs-home-alone-all-day-632x475.jpg",
    "http://www.funchap.com/wp-content/uploads/2014/05/help-dog-picture.jpg",
    "http://dreamatico.com/data_images/dog/dog-5.jpg",
    "https://www.petfinder.com/wp-content/uploads/2012/11/122163343-conditioning-dog-loud-noises-632x475.jpg",
    "http://animaliaz-life.com/data_images/dog/dog2.jpg",
    "http://static.ddmcdn.com/gif/earliest-dogs-660x433-130306-akita-660x433.jpg",
    "http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/articles/health_tools/dog_breed_health_issues_slideshow/getty_rm_photo_of_boxer_dog_looking_at_camera.jpg",
    "https://img.buzzfeed.com/buzzfeed-static/static/2014-05/enhanced/webdr06/12/14/enhanced-29762-1399918398-1.jpg?no-auto",
    "http://www.waitaki.govt.nz/services/PublishingImages/Pages/Registering-Your-Dog/Dog%20Control.png",
    "http://cdn.playbuzz.com/cdn/88a93817-ce03-4714-9f20-41c8b6d928a2/6b3d45c5-dc7b-4b49-8c8b-30de391153e0.jpg",
    "http://cdn1.theodysseyonline.com/files/2015/12/20/635862412743283503283987057_happy%20dog.jpg",
    "http://www.funchap.com/wp-content/uploads/2014/05/cute-husky-picture.jpg"
  ]

  # Make patients
  num_patients = patients_per_owner_distribution.sample
  num_patients.times do
    the_new_patient = Patient.create(
        name: Faker::Name.first_name,
        weight: rand(20..100),
        breed: breeds_list.sample,
        owner_id: the_new_owner.id,
        belongings: belongings_list.sample,
        diet: diet_list.sample,
        feed_time: "BID",
        npo: false,
        has_current_stay: false,
        image: open(dog_pics.sample)
        )
    # Make stays
#    has_stay = [true, false].sample
#    if has_stay
#      random_month = rand(1..12)
#      random_day = rand(1..28)
#      random_minute = stay_minute.sample
#      stay_length = rand(1..7)

#      the_new_stay = Stay.create(
#        is_current: [true, false].sample,
#        sch_check_in_dt: check_in = DateTime.new(stay_year, random_month,
#          random_day, random_month, random_minute),
#        sch_check_out_dt: check_in + stay_length.days,
#        patient_id: the_new_patient.id,
#        runn_id: Runn.all.sample.id,
#        remarks: remarks_list.sample
#      )
#
#
#
#      sch_check_in_dt = the_new_stay.sch_check_in_dt
#      sch_check_out_dt = the_new_stay.sch_check_out_dt
#      if [true, false].sample
#        the_new_stay.check_out_dt = sch_check_out_dt
#      end
#      the_new_stay.save

      # TODO: some stays have been checked in; this has to make sense
      # against Time.current...
#      if [true, false].sample

#      end

      # make feeding_events < StayEvent
      #some_time = sch_check_in_dt + 12.hours
      #while some_time < sch_check_out_dt
#      some_time = sch_check_in_dt
#      4.times do
#        some_time = some_time + 12.hours
#        fe = the_new_stay.feeding_events.create(
#          food_description: diet_list.sample,
#          did_eat: [true, false].sample,
#          remark: Faker::Lorem.sentence,
#          scheduled_time_stamp: some_time,
#          actual_time_stamp: some_time
#        )
#      end

      # make ud_events < StayEvent
#      some_time = sch_check_in_dt
#      4.times do
#        some_time = some_time + 6.hours
#        ud_event = the_new_stay.ud_events.create(
#          did_urinate: [true, true, true, true, true, false].sample,
#          did_defecate: [true, true, true, false].sample,
#          remark: Faker::Lorem.sentence,
#          scheduled_time_stamp: some_time,
#          actual_time_stamp: some_time
#        )
#      end

      # make misc_stay_event < StayEvent
#      some_time = sch_check_in_dt
#      (1..3).to_a.sample.times do
#        some_time = some_time + (1..8).to_a.sample
#        misc_stay_event = the_new_stay.misc_stay_events.create(
#          remark: Faker::Lorem.sentence,
#          scheduled_time_stamp: some_time,
#          actual_time_stamp: some_time,
#        )
#      end
#    end
  end
end

# Make 2 users
def create_user (a_first_name, a_last_name)
  a_good_password = "password"
  user_n = User.create(
    email: "#{a_first_name}@internet.com",
    first_name: a_first_name,
    last_name: a_last_name,
    password: a_good_password,
    password_confirmation: a_good_password,
  )
end

patients = Patient.order(:created_at).take(6)
5.times do
  content = Faker::Lorem.sentence(5)
  patients.each { |patient| patient.notes.create!(content: content) }
end

create_user('George', 'Washington')
create_user('John', 'Adams')
User.create(
    email: "admin@internet.com",
    first_name: 'Roy',
    last_name: 'Admin',
    password: 'cookies',
    password_confirmation: 'cookies',
    admin: true)
