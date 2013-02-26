class FizzBuzz
  attr_accessor :fizzbuzzes
  
  def jump(height=nil)
    @fizzbuzzes = 0
    return "how high" if height.nil? || height.class != Fixnum
    fizz_buzz_counts = {:fizz => 0, :buzz => 0}
    1.upto(height) do |i|
     if i % 3 == 0 and i % 5 == 0
       fizz_buzz_counts[:fizz] += 1 
       fizz_buzz_counts[:buzz] += 1
       @fizzbuzzes += 1
     elsif i % 3 == 0
       fizz_buzz_counts[:fizz] += 1
     elsif i % 5 == 0
       fizz_buzz_counts[:buzz] += 1
     else
     end 
    end
    return fizz_buzz_counts 
  end
end
