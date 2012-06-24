require 'spec_helper'

describe "charities/new" do
  before(:each) do
    assign(:charity, stub_model(Charity,
      :name => "MyString",
      :description => "MyText",
      :video_link => "MyString",
      :video_type => 1
    ).as_new_record)
  end

  it "renders new charity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => charities_path, :method => "post" do
      assert_select "input#charity_name", :name => "charity[name]"
      assert_select "textarea#charity_description", :name => "charity[description]"
      assert_select "input#charity_video_link", :name => "charity[video_link]"
      assert_select "input#charity_video_type", :name => "charity[video_type]"
    end
  end
end
