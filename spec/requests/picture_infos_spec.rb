require 'rails_helper'

RSpec.describe "PictureInfos", type: :request do
  describe "GET /picture_infos" do
    it "works! (now write some real specs)" do
      get picture_infos_path
      expect(response).to have_http_status(200)
    end
  end
end
