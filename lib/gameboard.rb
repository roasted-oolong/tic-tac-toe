class Gameboard
  attr_reader :board

  def initialize
    @board = Array.new(3) { Array.new(3, nil) }
  end

  def display_board
    @board.each do |row|
      puts row.map { |cell| cell || '_' }.join(' ') # display blank cells as '_' instead of nil
    end
  end

  def update_board(row, column, symbol)
    if valid_move?(row, column)
      @board[row][column] = symbol
      true
    else
      false
    end
  end

  def winner?
    check_rows || check_columns || check_diagonals
  end

  def board_full?
    @board.all? { |row| row.none?(&:nil?) }
  end

  private

  def valid_move?(row, column)
    row.between?(0, 2) && column.between?(0, 2) && @board[row][column].nil?
  end

  def check_rows
    @board.each { |row| row[0] if winning_line?(row) }
    nil
  end

  def check_columns
    (0...3).each do |column|
      column = @board.map { |row| row[column] }
      column[0] if winning_line?(column)
    end
    nil
  end

  def check_diagonals
    diagonal1 = (0...3).map { |i| @board[i][i] }
    diagonal1[0] if winning_line?(diagonal1)

    diagonal2 = (0...3).map { |i| @board[i][2 - i] }
    diagonal2[0] if winning_line?(diagonal2)

    nil
  end

  def winning_line?(line)
    line.all? { |cell| cell == line[0] && !cell.nil? }
  end
end
gameboard = Gameboard.new
gameboard.display_board
gameboard.board[0][0] = 'X'
gameboard.board[0][1] = 'X'
gameboard.board[0][2] = 'X'
