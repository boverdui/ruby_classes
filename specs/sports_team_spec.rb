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
    player = @team.find_player("Hoggy")
    assert_equal("Hoggy is part of the team!", player)
  end

  def test_find_player_not_found
    player = @team.find_player("Visser")
    assert_equal("Visser isn't part of the team!", player)
  end

  def test_win
    @team.win()
    points = @team.points
    assert_equal(1, points)
  end
  
end
