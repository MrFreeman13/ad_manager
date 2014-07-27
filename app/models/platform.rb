# == Schema Information
#
# Table name: platforms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Platform < ActiveRecord::Base
  has_many :banners, dependent: :destroy

  validates_presence_of :name, :url
end
