require_relative 'gameboard.rb'

class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def make_move
    print "#{name}, enter your move (example: row column)"
    input = gets.chomp.split.map(&:to_i)

    if valid_input?(input, gameboard)
      input
    else
      puts "Invalid move. Please try again."
      make_move(gameboard)
    end

    private
    def valid_input?(input, gameboard)
      return false unless input.size == 2 && input.all? { |x| x.between?(0, 2)}
        row, col = input
        gameboard[row, col].nil?
    end
  end
end