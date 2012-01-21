#require 'spec_helper'
#
#describe "players/edit.html.haml" do
#  before(:each) do
#    @player = assign(:player, stub_model(Player,
#      :new_record? => false,
#      :name => "MyString",
#      :points => 1
#    ))
#  end
#
#  it "renders the edit player form" do
#    render
#
#    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
#    assert_select "form", :action => player_path(@player), :method => "post" do
#      assert_select "input#player_name", :name => "player[name]"
#      assert_select "input#player_points", :name => "player[points]"
#    end
#  end
#end
