require './player.rb'
require './question.rb'


class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
    @question = Question.new()
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def start

    puts "#{@current_player.id}:"
    @question.question

    if !@question.answer
      @current_player.score_adjust
    end

    if @current_player.score > 0
      self.switch_player
      puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
      puts "----- NEW TURN -----"
      puts self.start
    else
      self.switch_player
      puts "#{@current_player.id} wins with a score of #{@current_player.score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end

  end

end