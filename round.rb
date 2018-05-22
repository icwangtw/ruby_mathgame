# require './question'
# require './player'

class Round

  def play
    if @player_1[:plays] == 3
      @player_1[:plays] = each_round(@player_1)
      play
    else
      @player_2[:plays] = each_round(@player_2)
      play
    end
  end

  def each_round(player)
    puts "You are #{player[:name]}"
    new_q = Question.new
    player[:plays] = new_q.each_q ? player[:plays] - 0 : player[:plays] - 1
    if player[:plays] > 0
      puts "#{@player_1[:name]}: #{@player_1[:plays]} / 3 vs #{@player_2[:name]}: #{@player_2[:plays]} / 3 "
      puts "--- NEW TURN ---"
    else
      puts "#{@player_1[:name]}: #{@player_1[:plays]} / 3 vs #{@player_2[:name]}: #{@player_2[:plays]} / 3 "
      puts "--- GAME OVER ---"
    end
  end

end

new_game = Round.new
new_game.play