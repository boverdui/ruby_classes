require ('minitest/autorun')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Scotland", ["Hoggy", "Finn", "Laidlaw"], "Toonie", 0)
  end

  def test_team_name
    name = @team.name()
    assert_equal("Scotland", name)
  end

  def test_team_players
    players = @team.players()
    assert_equal(["Hoggy", "Finn", "Laidlaw"], players)
  end

  def test_team_coach
    coach = @team.coach()
    assert_equal("Toonie", coach)
  end

  def test_set_coach
    @team.coach = "Vern"
    coach = @team.coach()
    assert_equal("Vern", coach)
  end

  def test_add_player
    @team.add_player("Price")
    players = @team.players()
    assert_equal(["Hoggy", "Finn", "Laidlaw", "Price"], players)
  end

  def test_find_player
    player_name = @team.find_player("Hoggy")
    assert_equal("Hoggy is part of the team!", player_name)
  end

  def test_find_player_not_found
    player_name = @team.find_player("Barclay")
    assert_equal("Barclay isn't part of the team!", player_name)
  end

  def test_win
    points= @team.win()
    assert_equal(1, points)
  end
end
