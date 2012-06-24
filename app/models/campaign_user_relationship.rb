# == Schema Information
# Schema version: 20120624085920
#
# Table name: campaign_user_relationships
#
#  id              :integer         not null, primary key
#  campaign_id     :integer
#  user_id         :integer
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  amount_per_mile :float
#  paid            :boolean
#  receipt_token   :string(255)
#

class CampaignUserRelationship < ActiveRecord::Base
  attr_accessible :campaign_id, :user_id, :amount_per_mile, :paid, :receipt_token
  
  belongs_to :campaign
  belongs_to :user
  
  validates_presence_of :campaign_id
  validates_presence_of :user_id
  validates_presence_of :amount_per_mile
end
