require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def setup
    @sports_team = SportsTeam.new("Falkirk", ["Jim", "Bob", "Arthur"], "Coach Nick", 0)
  end

  def test_team_name
    assert_equal("Falkirk", @sports_team.team_name)
  end

  def test_players_list
    assert_equal(["Jim", "Bob", "Arthur"], @sports_team.players_list)
  end

  def test_coach_name
    assert_equal("Coach Nick", @sports_team.coach_name)
  end

  def test_set_coach_name
    @sports_team.set_coach_name("Coach_Ricky")
    assert_equal("Coach_Ricky", @sports_team.coach_name)
  end

  def test_add_new_player
    assert_equal(["Jim", "Bob", "Arthur", "Paul"], @sports_team.add_new_player("Paul"))
  end

def test_is_player_present
  assert_equal("Bob", @sports_team.is_player_present("Bob"))
end

def test_win_or_loss
  @sports_team.win_or_loss("win")
  assert_equal(3, @sports_team.points)
end

end
