require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new("rock", "rock")
    @game2 = Game.new("rock", "scissors")
    @game3 = Game.new("scissors", "rock")
  end

  def test_game_play_draw
    expect = @game1.game_play
    assert_equal("Draw", expect)
  end

  def test_game_play_win_player_1
    expect = @game2.game_play
    assert_equal("Player 1 Won!", expect)
  end

  def test_game_play_lose_player_1
    expect = @game3.game_play
    assert_equal("Player 2 Won!", expect)
  end

end
