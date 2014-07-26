# == Schema Information
#
# Table name: banners
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  code        :text
#  partner_url :string(255)
#  views       :integer
#  clicks      :integer
#  max_views   :integer
#  created_at  :datetime
#  updated_at  :datetime
#  platform_id :integer
#

class Banner < ActiveRecord::Base
  belongs_to :platform

  validates_presence_of :name, :code, :partner_url, :platform_id
end
