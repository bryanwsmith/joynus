# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(
  first_name: 'Admin',
  last_name: 'Istrator',
  email: ENV['GMAIL_PASSWORD']
  password: ENV['GMAIL_PASSWORD']
  password_confirmation: ENV['GMAIL_PASSWORD']
  admin: true
)
