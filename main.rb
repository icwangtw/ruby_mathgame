require './question'
require './round'
require './player'

player_1 = Player.new 1
player_2 = Player.new 2

game = Game.new player_1, player_2
game.turn