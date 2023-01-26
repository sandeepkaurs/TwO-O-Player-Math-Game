class Game

  # accessor code below
  attr_reader :name, :player_1, :player_2

  def initialize(name)
    @name = name
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
  end

  # Statement to begin game and welcome both players
  def start
    puts "Lets Begin. Welcome #{player_1.name} and #{player_2.name}"
    pp @player_1
    pp @player_2
    turn
  end
  
  # code to show versus stmt
  def show_stats
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  # still need to create if stmt
  def turn
    @player_1.new_question
    @player_2.new_question
  end  

end  