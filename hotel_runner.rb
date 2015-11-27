require('pry-byebug')
require_relative('hotel')
require_relative('people')
require_relative('room')

#step 1 create a hotel
hotel = Hotel.new("The Grand Budapest")

#step create a room

double_room_builder = 3.times.map { |i| Room.new((i+1).to_s, "double", 50, 2) }

double_room_builder.each { |room| hotel.add_double_room(room) }

single_room_builder = 2.times.map { |i| Room.new((i+1).to_s, "single", 20, 1) }

single_room_builder.each { |room| hotel.add_single_room(room) }

#step create a person
person_1 = People.new("benedict")


binding.pry;''
