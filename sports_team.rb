class SportsTeam

  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def add_player(player)
    @players.push(player)
  end

  def find_player(player_name)
    for player in @players
      if player == player_name
        return true
      else
        return false
      end
    end
  end

  def win()
    @points += 1
  end

end
