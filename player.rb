class Player

  # accessor code below
  attr_reader :name, :lives


  def initialize(name)
    @name = name
    @lives = 3
  end  

  # code for 1 life to decrease if answer is incorrect
  def take_life
    @lives -= 1
  end

  # code so we print statement in given example in assignment
  def new_question
    new_question = Question.new
    puts "#{name}: What does #{new_question.num1} plus #{new_question.num2} equal?"
    print "> "
    @userchoice = $stdin.gets.chomp
    if new_question.check_answer?(@userchoice.to_i)
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      take_life
    end  
  end
end
  
