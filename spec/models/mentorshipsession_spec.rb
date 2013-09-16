require 'spec_helper'

describe Mentorshipsession do
  before do
    @user = Factory(:user)
  end

  subject { @user }

  it { should validate_uniqueness_of(:name) }

  it "validates uniqueness of name" do
    FactoryGirl.create(:tag, name: 'unique name')
    should validate_uniqueness_of(:name)
  end
end
