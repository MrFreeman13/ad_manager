# == Schema Information
#
# Table name: platforms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  token      :string(255)
#

class Platform < ActiveRecord::Base
  has_many :banners, dependent: :destroy

  validates_presence_of :name, :url

  before_save :generate_token

  def generate_token
    self.token = SecureRandom.hex(15)
    true
  end
end
