class StaticPagesController < ApplicationController
  def partner_site
    @platform = Platform.find(5)

  end
end
