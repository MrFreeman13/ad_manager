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

  validates_presence_of :name, :code, :partner_url, :platform_id, :max_views
  validates_numericality_of :max_views
  validates_format_of :partner_url, :with => /((?:https?\:\/\/|www\.)(?:[-a-z0-9]+\.)*[-a-z0-9]+.*)/i
end
