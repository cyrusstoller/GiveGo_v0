# == Schema Information
# Schema version: 20120624185033
#
# Table name: users
#
#  id                    :integer         not null, primary key
#  dwolla_customer_token :string(255)
#  fb_id                 :string(255)
#  name                  :string(255)
#  email                 :string(255)
#  created_at            :datetime        not null
#  updated_at            :datetime        not null
#  current_campaign_id   :integer
#  profile_image_url     :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :dwolla_customer_token, :email, :fb_id, :name, :profile_image_url
  
  has_many :campaigns
  
  has_many :campaign_user_relationships
  has_many :sponsored_campaigns, :through => :campaign_user_relationships, :source => :campaign
  
  has_many :sponsorships, :class_name => "Sponsor", :foreign_key => "user_id"
  
  belongs_to :current_campaign, :class_name => "Campaign", :foreign_key => "current_campaign_id"
  
  validates_presence_of :fb_id
  validates_presence_of :name
  validates_presence_of :email
end
