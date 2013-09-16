require 'spec_helper'
#Unit testing for model mentor
describe Mentor do

  before { @mentor = Mentor.new(name: "Example", email: "mentor@example.com", phone: "123456789", field_study: "Telecommunications") }

  subject { @mentor}
  it { should respond_to(:name) }
  it { should respond_to(:phone) }
  it { should respond_to(:email) }
  it { should respond_to(:field_study) }


  describe "when mentor name is empty" do
    before { @mentor.name = " " }
    it { should_not be_valid }
  end

  describe "when mentor phone is empty" do
    before { @mentor.phone = " " }
    it { should_not be_valid }
  end

  describe "when mentor field of study is empty" do
    before { @mentor.field_study = " " }
    it { should_not be_valid }
  end



end
