class Gameboard
  def initialize
    @board = Array.new(3) { Array.new(3, nil) }
  end

  def display_board
    @board.each do |row|
      puts row.map { |cell| cell || '_' }.join(' ') #display blank cells as '_' instead of nil
    end
  end

  def update_board(position, symbol)
    #update a cell with the player's symbol
  end

  def check_winner
    #evaluate if there's a winner
  end

  def board_full?
    #check if the board is full
  end
end
gameboard = Gameboard.new
gameboard.display_board