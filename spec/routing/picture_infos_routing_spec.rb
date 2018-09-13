require "rails_helper"

RSpec.describe PictureInfosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/picture_infos").to route_to("picture_infos#index")
    end


    it "routes to #show" do
      expect(:get => "/picture_infos/1").to route_to("picture_infos#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/picture_infos").to route_to("picture_infos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/picture_infos/1").to route_to("picture_infos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/picture_infos/1").to route_to("picture_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/picture_infos/1").to route_to("picture_infos#destroy", :id => "1")
    end

  end
end
