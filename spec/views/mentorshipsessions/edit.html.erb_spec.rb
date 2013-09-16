require 'spec_helper'

describe "mentorshipsessions/edit" do
  before(:each) do
    @mentorshipsession = assign(:mentorshipsession, stub_model(Mentorshipsession,
      :mentor_id => "",
      :user_id => 1
    ))
  end

  it "renders the edit mentorshipsession form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mentorshipsession_path(@mentorshipsession), "post" do
      assert_select "input#mentorshipsession_mentor_id[name=?]", "mentorshipsession[mentor_id]"
      assert_select "input#mentorshipsession_user_id[name=?]", "mentorshipsession[user_id]"
    end
  end
end
