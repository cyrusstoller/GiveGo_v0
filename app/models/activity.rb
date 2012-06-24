# == Schema Information
# Schema version: 20120624052739
#
# Table name: activities
#
#  id            :integer         not null, primary key
#  distance      :float
#  stardate      :date
#  activity_type :integer
#  campaign_id   :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Activity < ActiveRecord::Base
  attr_accessible :activity_type, :campaign_id, :distance, :stardate
  
  belongs_to :campaign
  
  validates_presence_of :distance
  validates_presence_of :stardate
  validates_presence_of :campaign_id
end
