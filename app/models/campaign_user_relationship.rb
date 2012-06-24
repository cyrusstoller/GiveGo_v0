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
  attr_accessible :campaign_id, :user_id
end
