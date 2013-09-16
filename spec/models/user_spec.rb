require 'spec_helper'
#Unit testing testing: testing the model user: devise

describe User do
    before { @user = User.new(firstname: "Example", lastname: "Last", email: "user@example.com") }

    subject { @user }
    it { should respond_to(:firstname) }
    it { should respond_to(:lastname) }
    it { should respond_to(:email) }


    describe "when email is empty" do
      before { @user.email = " " }
      it { should_not be_valid }
    end

    describe "when password confirmation does not match" do
      before { @user.password = "example@example.com", @user.password_confirmation = " " }
      it { should_not be_valid }
    end


    describe "when password confirmation does match" do
      before do
        @user.password = "example@example.com"
        @user.password_confirmation = "example@example.com"
      end
      it { should be_valid }
    end


    describe "when email already exists" do
      before do
        user_with_same_email = @user.dup
        user_with_same_email.save
      end
      it { should_not be_valid }
    end


    describe "when password is less than 5 characters" do
      before do
        @user.password = "123"
        @user.password_confirmation = "123"
      end
      it { should_not be_valid }
    end


  end

