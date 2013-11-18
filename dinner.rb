class Dinner
  attr_accessor :guests
  def initialize (*args)

  end

  def seating_chart_size
    guests.inject(0){|total,x| total + x.length}
  end
end