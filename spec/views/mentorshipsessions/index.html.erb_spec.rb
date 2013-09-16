require 'spec_helper'

describe "mentorshipsessions/index" do
  before(:each) do
    assign(:mentorshipsessions, [
      stub_model(Mentorshipsession,
        :mentor_id => "",
        :user_id => 1
      ),
      stub_model(Mentorshipsession,
        :mentor_id => "",
        :user_id => 1
      )
    ])
  end

  it "renders a list of mentorshipsessions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
