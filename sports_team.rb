class SportsTeam

attr_accessor(:team_name, :players, :coach, :points)

def initialize(team_name, players, coach, points)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = points
end

def add_player(new_player)
    @players.push(new_player)
end

def find_player(player_name)
    for player in @players
        if player == player_name
          return player_name
        else
        return "Not in team"
        end
    end
end

def add_points_for_win(result)
    if result == "win"
      @points += 3
    end
end



end
