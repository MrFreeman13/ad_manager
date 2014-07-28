require 'rails_helper'

RSpec.describe "banners/index", :type => :view do
  before(:each) do
    assign(:banners, [
      Banner.create!(),
      Banner.create!()
    ])
  end

  it "renders a list of banners" do
    render
  end
end
