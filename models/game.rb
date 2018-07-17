class Game

  def initialize(player1_input, player2_input)
    @player1_input = player1_input
    @player2_input = player2_input
  end

  def game_play
    if @player1_input == @player2_input
      return "Draw"
    elsif @player1_input == "rock" && @player2_input == "sissors"
      return "Player 1 Won! with rock"
    elsif @player1_input == "paper" && @player2_input == "rock"
      return "Player 1 Won!"
    elsif @player1_input == "sissors" && @player2_input == "paper"
      return "Player 1 Won!"
    end
    return "Player 2 Won!"
  end
end
