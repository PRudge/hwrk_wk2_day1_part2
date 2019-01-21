require('minitest/autorun')
require('minitest/rg')
require_relative('../Team')

class TestTeam < MiniTest::Test

  # Now we would like you to make a class that represents a sports team.
  #
  # Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
  # For each property in the class make a getter method than can return them.
  # Create a setter method to allow the coach's name to be updated.
  # Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
  # Create a method that adds a new player to the players array.
  # Add a method that takes in a string of a player's name and checks to see if they are in the players array.
  # Add a points property into your class that starts at 0.
  # Create a method that takes in whether the team has won or lost and updates the points property for a win.

  def setup
    # create an object
    @team_info = SportsTeam.new("Celtic",["Daniel Rudge", "Maddy Rudge", "Brogan Rudge", "Harry Bamber"], "Pauline Rudge")
  end

  def test_team_name
    assert_equal("Celtic", @team_info.name())
    # assert_equal("Celtic", @team_info.get_name())
  end

  def test_players
    assert_equal(["Daniel Rudge", "Maddy Rudge", "Brogan Rudge", "Harry Bamber"], @team_info.players())
  #   assert_equal(["Daniel Rudge", "Maddy Rudge", "Brogan Rudge", "Harry Bamber"], @team_info.get_players())
  end
  # #
  def test_coach_name
    assert_equal("Pauline Rudge", @team_info.coach())
    # assert_equal("Pauline Rudge", @team_info.get_coach())
  end

  def test_add_new_player
    # check length of array
    @team_info.add_new_player("Lucy Bainton")
    num_players = @team_info.players().length
    assert_equal(5, num_players)
  end

  def test_won_lost__won
    @team_info.add_point_for_win("win")
    assert_equal(1, @team_info.points())
  end

  def test_won_lost__lose
    @team_info.add_point_for_win("lost")
    assert_equal(0, @team_info.points())
  end

end
