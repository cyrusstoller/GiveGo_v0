require 'spec_helper'

describe "charities/show" do
  before(:each) do
    @charity = assign(:charity, stub_model(Charity,
      :name => "Name",
      :description => "MyText",
      :video_link => "Video Link",
      :video_type => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Video Link/)
    rendered.should match(/1/)
  end
end
