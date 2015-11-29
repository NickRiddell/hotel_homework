require 'pry-byebug'
require_relative './hotel'
require_relative 'guest'
require_relative 'room'

#step 1 create a hotel
hotel = Hotel.new("The Grand Budapest")

#step create a rooms/beds
room_1 = Room.new({number: 1, type: 'Double', rate: 100})
hotel.add_room(room_1)
hotel.add_room(Room.new(number: 1.5, type: 'Double', rate: 0))
hotel.add_room(Room.new(number: 2, type: 'Double', rate: 100))
hotel.add_room(Room.new(number: 2.5, type: 'Double', rate: 0))
hotel.add_room(Room.new(number: 3, type: 'Double', rate: 100))
hotel.add_room(Room.new(number: 3.5, type: 'Double', rate: 0))
hotel.add_room(Room.new(number: 4, type: 'Single', rate: 70))
hotel.add_room(Room.new(number: 5, type: 'Single', rate: 70))
hotel.add_room(Room.new(number: 6, type: 'Single', rate: 70))

#TODO: Show capacity
puts "The #{hotel.name} sleeps #{hotel.capacity} guests at full capacity."
puts"\n"
#TODO: list available rooms
puts "Let me just check for you madam. Ah yes, rooms #{hotel.list_available_rooms} are available this evening."
puts"\n"

#TODO: create guests
guest_1 = Guest.new("Sebastian")
hotel.add_guest(guest_1)
hotel.add_guest(Guest.new('Fred'))
hotel.add_guest(Guest.new('Wilma'))
hotel.add_guest(Guest.new('Barney'))
hotel.add_guest(Guest.new('Betty'))

#TODO: list guests
puts "Guests waiting to check in: #{hotel.list_guests}"
puts"\n"

#TODO: check guests in
puts "Wilma is checking in to room 1."
puts"\n"
hotel.check_in("Wilma", 1)
puts "Available rooms #{hotel.list_available_rooms}"
hotel.list_check_ins
puts "Current hotel revenue: #{hotel.revenue}"
puts"\n"
puts "Betty and Barney are checking in to room 2."
puts"\n"
hotel.check_in("Betty", 2)
hotel.check_in("Barney", 2.5)
puts "Available rooms #{hotel.list_available_rooms}"
hotel.list_check_ins
puts "Current hotel revenue: #{hotel.revenue}"
puts"\n"
#TODO: guest check out
puts "Wilma is checking out."
puts"\n"
hotel.check_out("Wilma", 1)
puts "Available rooms #{hotel.list_available_rooms}"
#TODO: occupied rooms
hotel.list_check_ins
puts "Current hotel revenue: #{hotel.revenue}"

binding.pry;''

