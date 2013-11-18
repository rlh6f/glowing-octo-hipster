require "#{File.dirname(__FILE__)}/even_number"

describe EvenNumber do

  it "should only allow even numbers" do
    EvenNumber.new(42).value.should eq 42
    EvenNumber.new(41).value.should eq 42
  end

  it "should get the next even number" do
    EvenNumber.new(40).succ.value.should eq 42
  end

  it "should compare even numbers" do
    (EvenNumber.new(40) < EvenNumber.new(42)).should be true
    (EvenNumber.new(42) > EvenNumber.new(40)).should be true

  end

  it 'should generate a range of even numbers' do
    (EvenNumber.new(41)...EvenNumber.new(43)).to_a[0].value.should eq 42
  end

end