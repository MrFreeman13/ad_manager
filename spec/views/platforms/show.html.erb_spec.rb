require 'rails_helper'

RSpec.describe "platforms/show", :type => :view do
  before(:each) do
    @platform = assign(:platform, Platform.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
