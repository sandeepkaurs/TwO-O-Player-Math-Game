class Question

  # accessor code below
  attr_reader :num1, :num2
  
  # code to generate random numbers and calculate sum of those two numbers
  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @sum = num1 + num2
  end
  
  # code to check if sum equals the inputted answer
  def check_answer?(input)
    @sum == input
  end

end