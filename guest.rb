class Guest
  attr_accessor :name, :room
  def initialize (name)
    @name = name
    @room = {}
  end

  def pretty_string
    "'#{@name}'"
  end

  def room
    @room
  end

  def room_check_in(room)
    @room[room.number] = room
  end

  def room_check_out
    @room = {}
  end

  def list_occupied
    @room.map { |k, room| puts "#{name} is in room #{room.occupied}." }
  end

  def show_me_the_money
    @room.map { |k, room| room.rate }
  end

end