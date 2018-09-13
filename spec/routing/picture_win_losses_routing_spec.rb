require "rails_helper"

RSpec.describe PictureWinLossesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/picture_win_losses").to route_to("picture_win_losses#index")
    end


    it "routes to #show" do
      expect(:get => "/picture_win_losses/1").to route_to("picture_win_losses#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/picture_win_losses").to route_to("picture_win_losses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/picture_win_losses/1").to route_to("picture_win_losses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/picture_win_losses/1").to route_to("picture_win_losses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/picture_win_losses/1").to route_to("picture_win_losses#destroy", :id => "1")
    end

  end
end
