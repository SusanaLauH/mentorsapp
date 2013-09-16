require 'spec_helper'
#Integration tests  -using Capybara

describe "PagesFlows" do
    describe "Home page" do
    it "should have the title Panama Mentors" do
      visit '/home'
      expect(page).to have_title('Panama Mentors')
    end

    it "should have the content Create an Account" do
      visit '/home'
      expect(page).to have_content('Create an Account')
    end

    it "should have the content Login" do
      visit '/home'
      expect(page).to have_content('Login')
    end

  end

    describe "About page" do
  it "should have the content About Us" do
    visit '/about'
    expect(page).to have_content("About Us")
    end
  end

  describe "Resources page" do
    it "should have the content Resources" do
      visit '/resources'
      expect(page).to have_content("Resources")
    end
  end

    describe "Help page" do
    it "should have the content Help - FAQ" do
      visit '/help'
      expect(page).to have_content("Help - FAQ")
    end
  end

  describe "Gallery page" do
    it "should have the content Gallery" do
      visit '/gallery'
      expect(page).to have_content("Gallery")
    end
  end

  describe "Contact Us" do
    it "should have the content Contact Us" do
      visit '/contact'
      expect(page).to have_content("Contact Us")
    end
  end

  describe 'User signs up' do
    it "should create account succesfully" do
      visit '/users/sign_up'
      fill_in "Firstname", :with => "example"
      fill_in "Lastname", :with => "example"
      fill_in "Email", :with => "example@email.com"
      fill_in "Password", :with => "password"
      fill_in "Password confirmation", :with => "password"
      page.select 'Masters', :from => 'Studies level'
      page.select 'Telecommunications', :from => 'Field study'
      click_button "Sign up"
      expect(page).to have_content("You are signed in")
    end
  end


  describe 'User login' do
    before :each do
      User.create(:email => 'example@email.com', :password => 'password')
    end
    it "should login succesfully" do
      visit '/users/sign_in'
      fill_in "Email", :with => "example@email.com"
      fill_in "Password", :with => "password"
      click_button "Sign in"
      expect(page).to have_text("You are signed in")
    end
  end


  describe 'Admin user is able create mentors' do
    before :each do
      User.create(:email => 'admin@admin.com', :password => 'password')
      visit '/users/sign_in'
      fill_in "Email", :with => "admin@admin.com"
      fill_in "Password", :with => "password"
      click_button "Sign in"
    end

    it "should create mentor successfully" do
      visit '/mentors/new'
      fill_in "Name", :with => "example"
      fill_in "Email", :with => "example@example.com"
      fill_in "Phone", :with => "1234565564"
      page.select 'Masters', :from => 'Studies level'
      page.select 'Telecommunications', :from => 'Field study'
      click_button "Create mentor"
      expect(page).to have_content("Mentor user was successfully created")
    end

  end


   describe 'Regular users are not able to create mentors' do
    before :each do
      User.create(:email => 'example@example.com', :password => 'password')
      visit '/users/sign_in'
      fill_in "Email", :with => "example@example.com"
      fill_in "Password", :with => "password"
      click_button "Sign in"
    end

    it "should not create mentor successfully" do
      visit '/mentors/new'
      page.should_not(have_content("Mentor user was successfully created"))
    end


  end




end