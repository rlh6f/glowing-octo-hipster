class EvenNumber
  include Comparable
  attr_accessor :value

  def initialize(value)
    if value.even?
      @value = value
    else
      @value = value + 1
    end
  end

  def succ
    EvenNumber.new(@value + 1)
  end

  def <=> (other)
    @value <=> other.value
  end

  def inspect
    @value
  end
end