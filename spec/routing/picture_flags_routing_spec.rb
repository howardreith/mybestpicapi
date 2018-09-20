require "rails_helper"

RSpec.describe PictureFlagsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/picture_flags").to route_to("picture_flags#index")
    end


    it "routes to #show" do
      expect(:get => "/picture_flags/1").to route_to("picture_flags#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/picture_flags").to route_to("picture_flags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/picture_flags/1").to route_to("picture_flags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/picture_flags/1").to route_to("picture_flags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/picture_flags/1").to route_to("picture_flags#destroy", :id => "1")
    end

  end
end
