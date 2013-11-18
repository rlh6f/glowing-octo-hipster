class WishList
  include Enumerable
  attr_accessor :wishes

  def initialize(*wishes)
    @wishes=wishes
  end

  def each
      @wishes.each_index {|x| yield "#{x+1}. #{@wishes[x]}"}
  end

end
