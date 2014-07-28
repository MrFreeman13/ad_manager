require 'rails_helper'

RSpec.describe "platforms/edit", :type => :view do
  before(:each) do
    @platform = assign(:platform, Platform.create!())
  end

  it "renders the edit platform form" do
    render

    assert_select "form[action=?][method=?]", platform_path(@platform), "post" do
    end
  end
end
