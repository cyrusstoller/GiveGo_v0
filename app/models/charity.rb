# == Schema Information
# Schema version: 20120624052429
#
# Table name: charities
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  video_link  :string(255)
#  video_type  :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Charity < ActiveRecord::Base
  attr_accessible :description, :name, :video_link, :video_type
  
  has_many :campaigns
  
  validates_presence_of :name
  validates_presence_of :description
end
