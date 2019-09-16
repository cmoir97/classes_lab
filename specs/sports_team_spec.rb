require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

def test_get_team_name
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe", 0)
    assert_equal("cav fc", team.team_name())
end

def test_get_players
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe", 0)
    assert_equal(["Cameron", "Calum", "Sam"], team.players())
end

def test_get_coach
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe", 0)
    assert_equal("Joe", team.coach())
end

def test_set_coach_name
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe", 0)
    team.coach = "Jack"
    assert_equal("Jack", team.coach())
end

def test_add_player
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe", 0)
    team.add_player("David")
    assert_equal(["Cameron", "Calum", "Sam", "David"], team.players())
end

def test_find_player__true
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe", 0)
    assert_equal("Cameron", team.find_player("Cameron"))
end

def test_find_player__false
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe", 0)
    assert_equal("Not in team", team.find_player("Alan"))
end

def test_add_points_for_win
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe", 0)
    assert_equal(3, team.add_points_for_win("win"))
end

end
