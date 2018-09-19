require "rails_helper"

RSpec.describe PictureMeasurementsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/picture_measurements").to route_to("picture_measurements#index")
    end


    it "routes to #show" do
      expect(:get => "/picture_measurements/1").to route_to("picture_measurements#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/picture_measurements").to route_to("picture_measurements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/picture_measurements/1").to route_to("picture_measurements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/picture_measurements/1").to route_to("picture_measurements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/picture_measurements/1").to route_to("picture_measurements#destroy", :id => "1")
    end

  end
end
