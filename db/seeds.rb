# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Address.destroy_all
Event.destroy_all
Organizer.destroy_all

address_one = Address.create(street_num: 1, street: "first street", suburb: "brisbane", postcode: 4000)
address_two = Address.create(street_num: 2, street: "second street", suburb: "brisbane", postcode: 4000)
address_three = Address.create(street_num: 3, street: "third street", suburb: "brisbane", postcode: 4000)
p "Address Count: #{Address.count}"

organizer_one = Organizer.create(email: "foo@bar.com", password: "password")
organizer_two = Organizer.create(email: "a@b.com", password: "password")
organizer_three = Organizer.create(email: "bing@bong.com", password: "password")
p "Organizer Count: #{Organizer.count}"

Event.create!(time: Time.new, date: Date.new, name: "First Event", address_id: address_one.id, organizer_id: organizer_one.id )
Event.create!(time: Time.new, date: Date.new, name: "Second Event", address_id: address_two.id, organizer_id: organizer_two.id )
Event.create!(time: Time.new, date: Date.new, name: "Third Event", address_id: address_three.id, organizer_id: organizer_three.id )
p "Event Count: #{Event.count}"
