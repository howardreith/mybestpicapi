require 'rails_helper'

RSpec.describe "PictureWinLosses", type: :request do
  describe "GET /picture_win_losses" do
    it "works! (now write some real specs)" do
      get picture_win_losses_path
      expect(response).to have_http_status(200)
    end
  end
end
