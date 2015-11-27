class Hotel
  attr_reader :name, :single_rooms, :double_rooms, :room_count
  def initialize(hotel_name)

    @name = hotel_name
    @single_rooms = Array.new()
    @double_rooms = Array.new()
    @room_count = @single_rooms.length.to_i + @double_rooms.length.to_i
  end

  def double_rooms
    @double_rooms
  end

  def add_double_room(room)
    @double_rooms << room
  end

  def add_single_room(room)
    @single_rooms << room
      
  end

end