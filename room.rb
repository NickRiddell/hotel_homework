class Room
  attr_accessor :number, :type, :rate

  def initialize(options = {})
    @number = options[:number]
    @type = options[:type]
    @rate = options[:rate]
  end

  def number
    @number
  end

  def pretty_string
    "Rooms #{@number.fixnum?} are available this evening"
  end

  def occupied
    @number.to_i
  end

  def rate
    @rate
  end
end