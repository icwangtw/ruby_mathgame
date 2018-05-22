require './question'
require './player'
class Game

  def initialize (p1, p2)
    @player_1 = p1
    @player_2 = p2
    @currentplayer = @player_2
  end

  def turn
    if @player_1.plays == 0
      puts "--- GAME OVER ---"
      puts "Player 2 wins with a score of #{@player_2.plays}"
      puts "Good bye!"
    elsif @player_2.plays == 0
      puts "--- GAME OVER ---"
      puts "Player 1 wins with a score of #{@player_1.plays}"
      puts "Good bye!"
    elsif @currentplayer == @player_2
      puts "--- NEW TURN ---"
      @player_1.plays = round(@player_1)
      @currentplayer = @player_1
      puts "P1: #{@player_1.plays} / 3 vs P2: #{@player_2.plays} / 3 "
      turn
    else
      puts "--- NEW TURN ---"
      @player_2.plays = round(@player_2)
      @currentplayer = @player_2
      puts "P1: #{@player_1.plays} / 3 vs P2: #{@player_2.plays} / 3 "
      turn
    end
  end

  def round(player)
    new_q = Question.new
    result = new_q.each_q(player) ? player.plays - 0 : player.plays - 1
    return result
  end


end