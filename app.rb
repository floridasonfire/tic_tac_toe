require('sinatra')
require('sinatra/reloader')
also_reload('/lib/**/*.rb')
require("./lib/board")
require("./lib/game")
require("./lib/player.rb")
require("./lib/space")
require('pry')
#
# @@players = []

get('/') do

erb(:index)
end

post('/play') do
@players=Player.new({:player1 => params.fetch('player1'), :player2 => params.fetch('player2')})
@players.save()
@player1=@players.player1
@player2=@players.player2
# @@players.push(@player1)
# @@players.push(@player2)
# @board = Board.new({:one=> "one", :two => "two", :three=> "three", :four=> "four", :five => "five", :six => "six", :seven => "seven", :eight=> "eight", :nine=> "nine"})
# @board.save
# @spaces = {}
# @move ={@spaces.fetch(params.fetch('move1'))=> @player1}
# @board.each_value {|value| @spaces.store(value, "")}
# @spaces.merge!(@move)
erb(:play)
end

get('/play') do
# @players=Player.new({:player1 => params.fetch('player1'), :player2 => params.fetch('player2')})
# @players.save()
# @player1=@players.player1
# @player2=@players.player2
@players=Player.new({:player1 => params.fetch('player1'), :player2 => params.fetch('player2')})
@players.save()
@player1=@players.player1
@player2=@players.player2
erb(:play)
end

get('/success') do
  # @players=Player.new({:player1 => params.fetch('player1'), :player2 => params.fetch('player2')})
  # @player1=@players.player1
  # @player2=@players.player2
  # @players.push(@player1)
  # @players.push(@player2)
erb(:success)
end

post('/success') do
  @all_players = Player.all()
  erb(:success)
end
