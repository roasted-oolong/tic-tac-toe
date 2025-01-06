require_relative 'lib/gameboard'
require_relative 'lib/player'

class Game
  def initialize
    @gameboard = Gameboard.new
    @player1 = Player.new('Player 1', 'X')
    @player2 = Player.new('Player 2', 'O')
    @current_player = @player1
  end

  def play
    puts "Let's play a game of Tic Tac Toe 😊"
    
    until game_over?
      @gameboard.display_board
      puts "#{@current_player.name}'s turn (#{@current_player.symbol}):"

      move = @current_player.make_move(@gameboard)
      row, col = move
      @gameboard.update_board(row, col, @current_player.symbol)

      switch_player unless game_over?
    end
      @gameboard.display_board
      end_game
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def game_over?
    @gameboard.winner? || @gameboard.board_full?
  end

  def end_game
    if @gameboard.winner?
      puts "#{@current_player.name} wins!"
    else
      puts "It's a tie 🤝"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Game.new
  game.play
end