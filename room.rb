class Room
  attr_reader :number, :type, :discount, :capacity

  def initialize (room_number, room_type, discount, capacity)
    @number = room_number
    @type = room_type
    @discount = discount
    @capacity = capacity
    @guests = []
    @occupants = @guests.length
  end

  #full?
  #occupants.size <= max_capacity

  #add_occupant

  #remove_occupant

  #type => double / single

  #rate

end