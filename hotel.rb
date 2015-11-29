class Hotel
  attr_accessor :name, :rooms, :guests
  def initialize(hotel_name)
    @name = hotel_name
    @rooms = {}
    @guests = {}
  end

  def name
    @name
  end

  def add_room(room)
    @rooms[room.number] = room
  end

  def add_guest(guest)
    @guests[guest.name] = guest
  end

  def list_available_rooms
    if @rooms.empty?
      "My apologies sir, we are currently fully booked"
    else
      available = @rooms.map {|k, room| room.number}
    end
    available.select{ |number| number.class==Fixnum}
  end

  def capacity
    @rooms.length
  end

  def list_guests
    if @guests.empty?
      "WE HAVE NO GUESTS?! HOW CAN THIS BE POSSIBLE?!"
    else
      guest_strings = @guests.map do |key, guest|
        guest.pretty_string
      end
      guest_strings.join(", ")
    end
  end

  def check_in(guest_name, room)
    guest = @guests[guest_name]
    room = @rooms.delete(room)
    guest.room_check_in(room)
  end

  def check_out(guest_name, room)
    guest = @guests[guest_name]
    room = @guests[guest_name].room[room]
    guest.room_check_out
    self.add_room(room)
  end

  def list_check_ins
    @guests.map { |k, guest| guest.list_occupied }
  end

  def revenue
    money = @guests.map { |k, guest| guest.show_me_the_money }
    money.flatten.inject{|sum,x| sum + x }
  end
end