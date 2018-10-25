# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  doctor = Doctor.create!(first_name: Faker::Hobbit.character,last_name: Faker::Hobbit.character, specialty: Faker::HowIMetYourMother.quote, postal_code: Faker::Crypto.md5)
end

10.times do
  patient = Patient.create!(first_name: Faker::Hobbit.character,last_name: Faker::Hobbit.character)
end

15.times do
  appointment = Appointment.create!(date: Faker::Date.forward(23) ,doctor_id: rand(1..10), patient_id: rand(1..10))
end