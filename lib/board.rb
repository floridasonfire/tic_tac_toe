class Board
  attr_reader(:one, :two, :three, :four, :five, :six, :seven, :eight, :nine)

  define_method(:initialize) do |attributes|
    @one = attributes.fetch(:one)
    @two = attributes.fetch(:two)
    @three = attributes.fetch(:three)
    @four = attributes.fetch(:four)
    @five = attributes.fetch(:five)
    @six = attributes.fetch(:six)
    @seven = attributes.fetch(:seven)
    @eight = attributes.fetch(:eight)
    @nine = attributes.fetch(:nine)
    @total_player1 = 0
    @total_player2 = 0
  end


end
