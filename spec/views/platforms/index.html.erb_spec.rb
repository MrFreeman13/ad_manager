require 'rails_helper'

RSpec.describe "platforms/index", :type => :view do
  before(:each) do
    assign(:platforms, [
      Platform.create!(),
      Platform.create!()
    ])
  end

  it "renders a list of platforms" do
    render
  end
end
