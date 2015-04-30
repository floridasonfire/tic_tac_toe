class Game

attr_reader(:players, :board, :space, :turn)
@@game = {}

  define_method(:initialize) do |attributes|
    @board = {}
    @turn = 0
    @players = {}
    @space = {}

  end

  define_singleton_method(:clear) do
    @@game = {}
  end

  define_method(:add_players) do |players|
    @players = players
  end

  define_method(:get_player) do |player|
    player = @players.fetch(player)
    player
  end

  define_method(:mark_player1) do |player1|
    player1 = @players.fetch(player1)
    @space.store(self, player1)
  end

  define_method(:mark_player2) do |player2|
    player2 = @players.fetch(player2)
    @space.store(self, player2)
  end

  define_method(:save) do
    @@game.store(self)
  end

  define_method(:turn) do |space|
    if turn >0
      # if turn.odd?
      #
      #   @space.store(space, )
      #
      # else
      #   @players.name2
    @turn += 1
    # end
  end
end






end
