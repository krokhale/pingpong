require 'spec_helper'

describe "players/index.html.haml" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :name => "Name",
        :points => 1
      ),
      stub_model(Player,
        :name => "Name",
        :points => 1
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
