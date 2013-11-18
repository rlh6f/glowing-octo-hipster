require "#{File.dirname(__FILE__)}/even_number"

describe EvenNumber do

  it "should only allow even numbers" do
    EvenNumber.new(42).value.should eq 42
    EvenNumber.new(41).value.should eq 42
  end

  it "should get the next even number" do
      pending
  end

  it "should compare even numbers" do
      pending
  end

  it 'should generate a range of even numbers' do
      pending
  end

end