# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = [
  {
    first_name: 'Bob',
    last_name: 'Saggit',
    username: 'thebobsaggit',
    email: 'test1@xxx.xxx',
    gender: 'male',
    age: 22,
    password: '123456',
    password_confirmation: '123456'
  },
  {
    first_name: 'Jose',
    last_name: 'Sison',
    username: 'straightgoated',
    email: 'test2@xxx.xxx',
    gender: 'male',
    age: 30,
    password: '123456',
    password_confirmation: '123456'
  },
  {
    first_name: 'Your',
    last_name: 'Mother',
    username: 'yourmum',
    email: 'test3@xxx.xxx',
    gender: 'female',
    age: 69,
    password: '123456',
    password_confirmation: '123456'
  },
  {
    first_name: 'Scooby',
    last_name: 'Doo',
    username: 'scoobydoobeedoo',
    email: 'test4@xxx.xxx',
    gender: 'dog',
    age: 12,
    password: '123456',
    password_confirmation: '123456'
  }
]

users.each do |attr|
  p 'creating user', attr
  User.create(attr)
end
