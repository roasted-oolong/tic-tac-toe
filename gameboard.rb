class Gameboard
  def initialize
    @board = Array.new(3) { Array.new(3, nil) }
  end

  def display_board
    @board.each do |row|
      puts row.map { |cell| cell || '_' }.join(' ') #display blank cells as '_' instead of nil
    end
  end

  def valid_move?(row, column)
    row.between?(0, 2) && column.between?(0, 2) && @board[row][column].nil?
  end

  def update_board(row, column, symbol)
    if valid_move?(row, column)
      @board[row][column] = symbol
      true
    else
      false
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