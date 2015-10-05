require 'rails_helper'

RSpec.describe "StandardsBoards", type: :request do
  describe "GET /standards_boards" do
    it "works! (now write some real specs)" do
      get standards_boards_path
      expect(response).to have_http_status(200)
    end
  end
end
