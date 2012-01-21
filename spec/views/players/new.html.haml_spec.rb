#require 'spec_helper'
#
#describe "players/new.html.haml" do
#  before(:each) do
#    assign(:player, stub_model(Player,
#      :name => "MyString",
#      :points => 1
#    ).as_new_record)
#  end
#
#  it "renders new player form" do
#    render
#
#    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
#    assert_select "form", :action => players_path, :method => "post" do
#      assert_select "input#player_name", :name => "player[name]"
#      assert_select "input#player_points", :name => "player[points]"
#    end
#  end
#end
