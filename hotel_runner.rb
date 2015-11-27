require('pry-byebug')
require_relative('hotel')
require_relative('people')
require_relative('room')

#step 1 create a hotel
hotel = Hotel.new("The Grand Budapest", 2)


#step2 create a person
person_1 = People.new()

binding.pry;''