class Player
  @@players = []
  attr_reader(:player1, :player2)

  define_method(:initialize) do |attributes|
    @player1 = attributes.fetch(:player1)
    @player2 = attributes.fetch(:player2)
  end

  define_method(:save) do
    @@players.push(self)
  end

end
