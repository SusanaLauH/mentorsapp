require 'spec_helper'

describe "mentorshipsessions/new" do
  before(:each) do
    assign(:mentorshipsession, stub_model(Mentorshipsession,
      :mentor_id => "",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new mentorshipsession form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mentorshipsessions_path, "post" do
      assert_select "input#mentorshipsession_mentor_id[name=?]", "mentorshipsession[mentor_id]"
      assert_select "input#mentorshipsession_user_id[name=?]", "mentorshipsession[user_id]"
    end
  end
end
