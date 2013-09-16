require 'spec_helper'
# Here are the functional testing for Mentors Controller, including a test for the XML request to the show REST API for the Mentors Controller.

describe MentorsController do

  describe "GET index" do
    it "it should be successful" do
      get :index
      response.should be_success
    end
  end

  describe "POST create" do
    it "should be successful" do
      post :create
      response.should be_success
    end

  end

  describe "request XML to Rails REST API" do
    before :each do
      Mentor.create(:name => 'Example Example', :email => 'example@example.com', :phone => "123456789", :field_study => "Telecommunications", :studies_level => "Masters" )
      end
        it "XML response should contains expected content" do
        visit '/mentors/1.xml'
        expect(page).to have_content("Example")
        end
  end


#Adapted from http://jackhq.tumblr.com/post/1069481386/rspec-routing-tests
  describe "Routes tests"  do

    it "routes to index" do
      { :get => "/mentors" }.should route_to(:controller => "mentors", :action => "index")
    end

    it "routes to new" do
      { :get => "/mentors/new" }.should route_to(:controller => "mentors", :action => "new")
    end

    it "routes to show" do
      { :get => "/mentors/1" }.should route_to(:controller => "mentors", :action => "show", :id => "1")
    end

    it "routes to edit" do
      { :get => "/mentors/1/edit" }.should route_to(:controller => "mentors", :action => "edit", :id => "1")
    end

    it "routes to update" do
      { :put => "/mentors/1" }.should route_to(:controller => "mentors", :action => "update", :id => "1")
    end

    it "routes to destroy" do
      { :delete => "/mentors/1" }.should route_to(:controller => "mentors", :action => "destroy", :id => "1")

    end

  end




  end
