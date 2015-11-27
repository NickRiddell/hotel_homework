require_relative('people')
require_relative('room')

class Hotel
  def initialize(hotel_name, number_of_rooms)

    @name = hotel_name
    @room_count = number_of_rooms
    @rooms = Array.new(@room_count) {Hash.new}
    
  end
end