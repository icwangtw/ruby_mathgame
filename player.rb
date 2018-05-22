require './question'
class Player

  def initialize
    @player_1 = {name: "Player 1", plays: 3}
    @player_2 = {name: "Player 2", plays: 3}
    @currentplayer = @player_2
  end

  def turn
    if @player_1[:plays] == 0
      puts "--- GAME OVER ---"
    elsif @player_2[:plays] == 0
      puts "--- GAME OVER ---"
    elsif @currentplayer == @player_2
      puts "--- NEW TURN ---"
      @player_1[:plays] = round(@player_1)
      @currentplayer = @player_1
      puts "#{@player_1[:name]}: #{@player_1[:plays]} / 3 vs #{@player_2[:name]}: #{@player_2[:plays]} / 3 "
      turn
    else
      puts "--- NEW TURN ---"
      @player_2[:plays] = round(@player_2)
      @currentplayer = @player_2
      puts "#{@player_1[:name]}: #{@player_1[:plays]} / 3 vs #{@player_2[:name]}: #{@player_2[:plays]} / 3 "
      turn
    end
  end

  def round(player)
    puts "You are #{player[:name]}"
    new_q = Question.new
    result = new_q.each_q ? player[:plays] - 0 : player[:plays] - 1
    puts "The result is #{result}"
    return result
  end

game = Player.new
game.turn
end