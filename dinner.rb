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

  def whats_for_dinner
    return "Tonight we have proteins #{menu.proteins.join(' and ')}, and veggies #{menu.veggies.join(', ').gsub(/_/,' ').split(' ').map(&:capitalize).insert(-2,'and').join(' ')}."
  end

  def whats_for_dessert
    return "Tonight we have #{menu.desserts.values.flatten.length} delicious desserts: \
#{menu.desserts.map{|k,v| v if k != :molds}.join(', ').gsub(/_/,' ').split(' ').map(&:capitalize).join(' ')} and \
#{menu.desserts.map{|k,v| v if k == :molds}.length} molds: #{menu.desserts.map{|k,v| v if k == :molds}.compact.flatten.map(&:capitalize).join(' and ')}."
  end

end