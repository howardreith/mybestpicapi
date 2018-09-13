require 'rails_helper'

RSpec.describe "PictureMeasurements", type: :request do
  describe "GET /picture_measurements" do
    it "works! (now write some real specs)" do
      get picture_measurements_path
      expect(response).to have_http_status(200)
    end
  end
end
