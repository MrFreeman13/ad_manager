# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  email               :string(255)
#  admin               :boolean          default(FALSE)
#  created_at          :datetime
#  updated_at          :datetime
#  encrypted_password  :string(255)      default(""), not null
#  remember_created_at :datetime
#

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  validates_presence_of :name, :email
  validates_uniqueness_of :email
end
