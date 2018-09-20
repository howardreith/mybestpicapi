require 'rails_helper'

RSpec.describe "SessionTrackers", type: :request do
  describe "GET /session_trackers" do
    it "works! (now write some real specs)" do
      get session_trackers_path
      expect(response).to have_http_status(200)
    end
  end
end
