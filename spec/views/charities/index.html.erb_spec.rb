require 'spec_helper'

describe "charities/index" do
  before(:each) do
    assign(:charities, [
      stub_model(Charity,
        :name => "Name",
        :description => "MyText",
        :video_link => "Video Link",
        :video_type => 1
      ),
      stub_model(Charity,
        :name => "Name",
        :description => "MyText",
        :video_link => "Video Link",
        :video_type => 1
      )
    ])
  end

  it "renders a list of charities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Video Link".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
