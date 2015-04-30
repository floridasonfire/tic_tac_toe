require('player')
require('space')
require('game')
require('board')
require('pry')

describe(Player) do
  describe("#save") do
    it("returns the player's mark") do
      test_players = Player.new({:player1=> "X" , :player2=> "O"})
      expect(test_players.save()).to(eq([test_players]))
    end
  end

  describe('#which_turn') do
    it("will return the player") do
      new_players = Player.new({:player1=> "X", :player2=> "O"})
      board = {}
      game_hash = {:player1=> new_players.player1, :player2=>new_players.player2, :board=>board}
      game = Game.new(game_hash)
      game.next_turn()
      expect(game.which_turn()).to(eq("X"))
    end
  end
end

describe(Space) do
  describe('#mark') do
    it("stores the space and mark") do
    new_space = Space.new("one")
    new_space.mark("X")
    expect(new_space.check_mark()).to(eq("X"))
    end
  end
end

describe(Game) do
  describe('#players') do
    it('returns players and marks') do
      new_players = Player.new({:player1=> "X", :player2=> "O"})
      board = {}
      game_hash = {:player1=> new_players.player1, :player2=>new_players.player2, :board=>board}
      game = Game.new(game_hash)
      # game.add_players(new_players)
      expect(game.players).to(eq({:player1=> "X", :player2=> "O"}))
      expect(game.get_player(:player1)).to(eq("X"))
    end
  end

end



#   describe("#x_coordinate") do
#     it("returns the space's x_coordinate") do
#       test_space = Space.new({ :x => 1, :y => 2 })
#       expect(test_space.x_coordinate()).to(eq(1))
#     end
#   end
#
#   describe("#y_coordinate") do
#     it("returns the space's y_coordinate") do
#       test_space = Space.new({ :x => 1, :y => 2 })
#       expect(test_space.y_coordinate()).to(eq(2))
#     end
#   end
#
#   describe(".create") do # You write the rest of this one!
#     end
#
#   describe("#mark_by") do
#     it("lets a player mark the space") do
#       test_player = Player.new({ :mark => "X" })
#       test_space = Space.new({ :x => 1, :y => 2 })
#       test_space.mark_by(test_player)
#       expect(test_space.marked_by()).to(eq(test_player))
#     end
#   end
# end
