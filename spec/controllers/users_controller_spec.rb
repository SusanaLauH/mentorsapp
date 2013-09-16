require 'spec_helper'
# Here are the functional testing for Users Controller

describe UsersController do

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

#Adapted from http://jackhq.tumblr.com/post/1069481386/rspec-routing-tests
  describe "Routes tests"  do

  it "routes to index" do
    { :get => "/users" }.should route_to(:controller => "users", :action => "index")
  end

  it "routes to new" do
    { :get => "/users/new" }.should route_to(:controller => "users", :action => "new")
  end

  it "routes to show" do
    { :get => "/users/1" }.should route_to(:controller => "users", :action => "show", :id => "1")
  end

   it "routes to edit" do
     { :get => "/users/1/edit" }.should route_to(:controller => "users", :action => "edit", :id => "1")
  end

  it "routes to update" do
    { :put => "/users/1" }.should route_to(:controller => "users", :action => "update", :id => "1")
  end

  it "routes to destroy" do
    { :delete => "/users/1" }.should route_to(:controller => "users", :action => "destroy", :id => "1")

  end

 end

end

