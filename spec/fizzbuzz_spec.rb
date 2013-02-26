require 'rspec'
require './fizzbuzz.rb'

describe 'FizzBuzz' do
  before(:each) do
    @fizzbuzz = FizzBuzz.new
  end

  it "should be able to initialize" do
    @fizzbuzz.class.should eq(FizzBuzz)
  end
  
  it "should ask us how high when we tell it to jump without a number" do
    response = @fizzbuzz.jump
    response.should  eq("how high")
  end

  it "should tell us how high if we tell it to jump to not a number" do 
   @fizzbuzz.jump("really far").should eq("how high")

  end

  it "should give us back a hash of counts for fizzes and buzzes" do 
    @fizzbuzz.jump(2).should eq({:fizz => 0, :buzz => 0})
  end
 
  it "should give you back a hash of the counts of fizzess and buzzes up to that number" do
     response = @fizzbuzz.jump(3)
     response.should  eq({:fizz => 1, :buzz => 0})
  end

  it "should fizz and buzz up to a bigger number" do 
   @fizzbuzz.jump(20).should eq({:fizz => 6, :buzz => 4})

  end

  it "should count FizzBuzzes" do
    @fizzbuzz.jump(15).should eq({:fizz => 5, :buzz => 3 })
    @fizzbuzz.fizzbuzzes.should  eq(1)
  end 
    
 
end
