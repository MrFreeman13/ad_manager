require 'rails_helper'

RSpec.describe "banners/show", :type => :view do
  before(:each) do
    @banner = assign(:banner, Banner.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
