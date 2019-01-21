class SportsTeam
  attr_accessor :name, :players, :coach, :points

  # need an initialize to grab the input to the class
  def initialize(input_name, input_players, input_coach) # initialize is a ruby
    @name = input_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  def add_new_player(player)
    # add a new player to the team
    @players << player
  end

  def add_point_for_win(result)
    @points += 1 if result == "win"
  end

  # def get_name()
  #   return @name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach()
  #   return @coach
  # end

end
