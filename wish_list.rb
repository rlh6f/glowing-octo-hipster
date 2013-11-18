class WishList
  include Enumerable
  attr_accessor :wishes

  def initialize(*wishes)
    @wishes=wishes
  end

end
