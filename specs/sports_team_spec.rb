require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

def test_get_team_name
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe" )
    assert_equal("cav fc", team.get_team_name())
end

def test_get_players
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe" )
    assert_equal(["Cameron", "Calum", "Sam"], team.get_players())
end

def test_get_coach
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe" )
    assert_equal("Joe", team.get_coach())
end

def test_set_coach_name
    team = SportsTeam.new("cav fc", ["Cameron", "Calum", "Sam"], "Joe" )
    team.set_coach_name("Jack")
    assert_equal("Jack", team.get_coach())
end





end
