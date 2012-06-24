# == Schema Information
# Schema version: 20120624055154
#
# Table name: campaign_user_relationships
#
#  id          :integer         not null, primary key
#  campaign_id :integer
#  user_id     :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class CampaignUserRelationship < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :user
  
  validates_presence_of :campaign_id
  validates_presence_of :user_id
end
