class Gameboard
  def initialize
    @board = Array.new(3) { Array.new(3, nil) }
  end

  def display_board
    @board.each do |row|
      puts row.map { |cell| cell || '_' }.join(' ') #display blank cells as '_' instead of nil
    end
  end
end
gameboard = Gameboard.new
gameboard.display_board