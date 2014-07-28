# == Schema Information
#
# Table name: banners
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  code                :text
#  banner_partner_code :text(1000)
#  views               :integer          default(0)
#  clicks              :integer          default(0)
#  max_views           :integer          default(0)
#  created_at          :datetime
#  updated_at          :datetime
#  platform_id         :integer
#  token               :string(255)
#

class Banner < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  belongs_to :platform

  validates_presence_of :name, :code, :platform_id, :max_views
  validates_numericality_of :max_views

  before_save :generate_token, :generate_banner_partner_code

  def generate_banner_partner_code
    ad_url = self.code.match(/(https?:\/\/|www)\S+\"/).to_s
    self.banner_partner_code = self.code.gsub(/(https?:\/\/|www)\S+\"/, "http://localhost:3000/banners/#{self.token}?redir=#{ad_url}")
  end

  def generate_token
    self.token = SecureRandom.hex(20)
    true
  end

  def self.select_for_showing(platform)
    platform.banners.order('updated_at asc').each do |element|
      if element.views < element.max_views
        return element
      end
    end
    false
  end

  def inc_clicks
    self.update({:clicks => self.clicks+1})
  end

  def inc_views
    self.update({:views => self.views+1})
  end
end
