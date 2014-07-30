# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

events = Event.create([{name: 'dentist', day: 'Monday', start_time: '12:30 am', end_time: '1:00 am'}, { name: 'doctor', day: 'Wednesday', start_time: '3:00 pm', end_time: '3:30pm'}])
