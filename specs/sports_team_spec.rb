require ('minitest/autorun')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Scotland", ["Hoggy", "Russell", "Laidlaw"], "Townsend", 0)
  end

  def test_name
    name = @team.name()
    assert_equal("Scotland", name)
  end

  def test_players
    players = @team.players()
    assert_equal(["Hoggy", "Russell", "Laidlaw"], players)
  end

  def test_coach
    coach = @team.coach()
    assert_equal("Townsend", coach)
  end

  def test_set_coach
    @team.coach = "Cotter"
    coach = @team.coach()
    assert_equal("Cotter", coach)
  end

  def test_add_player
    @team.add_player("Price")
    players = @team.players()
    assert_equal(["Hoggy", "Russell", "Laidlaw", "Price"], players)
  end

  def test_find_player
    in_team = @team.find_player("Hoggy")
    assert_equal(true, in_team)
  end

  def test_find_player_not_found
    in_team = @team.find_player("Visser")
    assert_equal(false, in_team)
  end

  def test_win
    @team.win()
    points = @team.points
    assert_equal(1, points)
  end

end
