class EvenNumber
  attr_accessor :value

  def initialize(value)
    if value.even?
      @value = value
    else
      @value = value + 1
    end
  end

  def next
    @value +=2
  end


end