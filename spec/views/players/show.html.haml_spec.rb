require 'spec_helper'

describe "players/show.html.haml" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :name => "Name",
      :points => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
