class Game

 attr_reader(:player1, :player2, :board)
@@game = {}
@@players = {}


  define_method(:initialize) do |attributes|
    @board = attributes.fetch(:board)
    @player1 = attributes.fetch(:player1)
    @player2 = attributes.fetch(:player2)
    @@players.store(:player1, @player1)
    @@players.store(:player2, @player2)
    @spaces = {}
    @turn = 0
  end

  define_singleton_method(:clear) do
    @@game = {}
  end

  # define_method(:add_players) do |players|
  #   @players = players
  #   @@game.store(@players)
  # end

  define_method(:get_player) do |player|
    player = @@players.fetch(player)
    player
  end

  define_method(:players) do
    @@players
  end

  # define_method(:mark_player1) do |player1|
  #   player1 = @players.fetch(player1)
  #   @space.store(self, player1)
  # end
  #
  # define_method(:mark_player2) do |player2|
  #   player2 = @players.fetch(player2)
  #   @spaces.store(self, player2)
  # end

  define_method(:save) do
    @@game.store(self)
  end

  define_method(:next_turn) do
      # if turn.odd?
      #
      #   @space.store(space, )
      #
      # else
      #   @players.name2
    @turn += 1
    # end
  end
  #
  # define_method(:win) do
  #   if board.fetch(:one) == "O"


  define_method(:which_turn) do
    players = @@players

    if @turn.odd?
      players.fetch(:player1)
    else
      players.fetch(:player2)
    end
  end





end
