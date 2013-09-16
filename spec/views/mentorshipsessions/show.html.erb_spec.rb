require 'spec_helper'

describe "mentorshipsessions/show" do
  before(:each) do
    @mentorshipsession = assign(:mentorshipsession, stub_model(Mentorshipsession,
      :mentor_id => "",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
