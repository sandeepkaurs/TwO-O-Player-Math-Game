class Question
  attr_reader :num1, :num2
  
  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @sum = num1 + num2
  end
  