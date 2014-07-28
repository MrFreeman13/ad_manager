require 'rails_helper'

RSpec.describe "banners/new", :type => :view do
  before(:each) do
    assign(:banner, Banner.new())
  end

  it "renders new banner form" do
    render

    assert_select "form[action=?][method=?]", banners_path, "post" do
    end
  end
end
