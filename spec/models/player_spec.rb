require 'spec_helper'

describe Player do

  it "should have a rank attribute " do
    player = Factory :player
    player.rank.should_not be_nil

  end

  it "#scoring_algorithm " do
    #Player.scoring_algorithm.should exist
    player_one = Factory.create(:player, :name => "krishna", :points => nil, :rank => nil)
    player_two = Factory.create(:player, :name => "aarti", :points => nil, :rank => nil)
    puts player_one.inspect
    puts player_two.inspect
    winner = "one"
    result = Player.scoring_algorithm(player_one.name, player_two.name, winner)
    result.should_not be_false
    player_two.points.should == nil
    player_one.points.should == nil
    player_one.rank == 1
    player_two.rank == 2

  end

end
