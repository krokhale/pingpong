require 'spec_helper'

describe PlayersController do
  render_views

  it "should GET scorecard " do
    player = Factory(:player)
    get :scorecard, :player_id => player.id
    response.body.should match 'Startupter scorekeeper'
    response.should render_template(:scorecard)
    response.status.should == 200
    response.should be_success

  end

end