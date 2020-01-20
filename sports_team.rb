class SportsTeam
attr_reader :team_name, :players_list, :coach_name, :points

  def initialize(team_name, players_list, coach_name, points)
    @team_name = team_name
    @players_list = players_list
    @coach_name = coach_name
    @points = points

  end

# def team_name
#   return @team_name
# end
#
# def players_list
#   return @players_list
# end
#
# def coach_name
#   return @coach_name
# end

def set_coach_name(name)
  @coach_name = name
end

def add_new_player(name)
  @players_list.push(name)
end

def is_player_present(name)
  for player in @players_list
    if player == name
      return name
    end
  end
end

def win_or_loss(result)
    if result == "win"
    @points += 3
    elsif result == "draw"
    @points += 1
    end
end


end
