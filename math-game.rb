# questions => generates random numbers and creates the questions and answers, checks for truthy and falsy

# class Question

class Player

  def initialize
    @score = 3
  end

  def score_adjust
    @score = (@score - 1)
  end

  attr_accessor :score

end


class Question

  # def initialize
  #   @num1 = rand(1...20)
  #   @num2 = rand(1...20)
  # end

  # def question
  #   puts "What does #{num1} plus #{num2} equal?"

  #   print "> "
  #   answer = $stdin.gets.chomp

  #   if answer == "#{num1 + num2}"
  #     puts "YES! You are correct."
  #   else
  #     puts "Seriously? No!"
  #     @player1.score_adjust
  #   end

  # end

end


class Game

  def initialize
    @player1 = Player.new()
    @player2 = Player.new()
  end

  def start

    num1 = rand(1...20)
    num2 = rand(1...20)
    puts "What does #{num1} plus #{num2} equal?"

    print "> "
    answer = $stdin.gets.chomp

    if answer == "#{num1 + num2}"
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      false
      @player1.score_adjust
    end

    if @player1.score > 0
      puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
      puts "----- NEW TURN -----"
      puts self.start
    else
      puts "Player 2 wins with a score of #{@player2.score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end

  end

end



new_game = Game.new()

puts new_game.start