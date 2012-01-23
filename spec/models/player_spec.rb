require 'spec_helper'

describe Player do

  it "should have a rank attribute " do
    player = Factory :player
    player.rank.should_not be_nil

  end

end
