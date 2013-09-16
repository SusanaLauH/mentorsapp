require "spec_helper"

describe MentorshipsessionsController do
  describe "routing" do

    it "routes to #index" do
      get("/mentorshipsessions").should route_to("mentorshipsessions#index")
    end

    it "routes to #new" do
      get("/mentorshipsessions/new").should route_to("mentorshipsessions#new")
    end

    it "routes to #show" do
      get("/mentorshipsessions/1").should route_to("mentorshipsessions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mentorshipsessions/1/edit").should route_to("mentorshipsessions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mentorshipsessions").should route_to("mentorshipsessions#create")
    end

    it "routes to #update" do
      put("/mentorshipsessions/1").should route_to("mentorshipsessions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mentorshipsessions/1").should route_to("mentorshipsessions#destroy", :id => "1")
    end

  end
end
