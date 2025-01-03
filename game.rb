class Game
  def initialize
    @gameboard = Gameboard.new
    @player1 = Player.new('Player 1', 'X')
    @player2 = Player.new('Player 2', 'O')
    @current_player = @player1
  end

  def play_turn
    #handle single turn (get player input, update board, check win)
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