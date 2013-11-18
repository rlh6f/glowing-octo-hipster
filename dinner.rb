class Dinner
  attr_accessor :guests
  attr_accessor :menu

  Menu=Struct.new(:diet, :proteins, :veggies, :desserts)

  def initialize (diet, proteins=["Tofurkey", "Hummus"], veggies=[:ginger_carrots, :potatoes, :yams], desserts={:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]})
    @menu=Menu.new(diet, proteins, veggies, desserts)

  end

  def seating_chart_size
    guests.inject(0){|total,x| total + x.length}
  end
end