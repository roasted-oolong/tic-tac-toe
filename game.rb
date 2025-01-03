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
      @gameboard.update_board(move, @current_player.symbol)

      switch_player unless game_over?

      @gameboard.display_board
      announce_results
    end
  end

  def switch_player
    #change current player
  end

  def game_over?
    #check if game is over (win or draw)
  end

  def end_game
    #display winner/loser
  end
end