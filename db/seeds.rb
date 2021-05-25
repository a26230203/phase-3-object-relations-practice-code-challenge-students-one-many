puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

Cohort.reset_pk_sequence
Student.reset_pk_sequence

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 360).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 360).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 360).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 360).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 360).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
s1 = Student.create(
  name: "Ben",
  age: 25,
  cohort_id: 1
)

s2 = Student.create(
  name: "Corey",
  age: 26,
  cohort_id: 2
)

s3 = Student.create(
  name: "Denis",
  age: 28,
  cohort_id: 3
)

s4 = Student.create(
  name: "Nicho",
  age: 22,
  cohort_id: 4
)

s5 = Student.create(
  name: "Ryan",
  age: 18,
  cohort_id: 5
)

# check your schema and make sure to create students with all the necessary data

puts "Done!"