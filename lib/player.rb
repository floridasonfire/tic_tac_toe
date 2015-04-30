class Player
  @@players = []
  attr_reader(:player1, :player2)

  define_method(:initialize) do |attributes|
    @player1 = attributes.fetch(:player1)
    @player2 = attributes.fetch(:player2)
    @turn = 0

  end

  define_method(:save) do
    @@players.push(self)
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


  define_method(:which_turn) do
    players = :players

    if @turn.odd?
      @player1
    else
      @player2
    end
  end

end
