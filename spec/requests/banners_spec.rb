require 'rails_helper'

RSpec.describe "Banners", :type => :request do
  describe "GET /banners" do
    it "works! (now write some real specs)" do
      get banners_path
      expect(response.status).to be(200)
    end
  end
end
