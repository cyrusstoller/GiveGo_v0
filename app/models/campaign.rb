# == Schema Information
# Schema version: 20120624062741
#
# Table name: campaigns
#
#  id         :integer         not null, primary key
#  owner_id   :integer
#  start_date :date
#  end_date   :date
#  charity_id :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  message    :text
#

class Campaign < ActiveRecord::Base
  attr_accessible :charity_id, :end_date, :message, :owner_id, :start_date
  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  
  has_many :campaign_user_relationships
  has_many :sponsors, :through => :campaign_user_relationships, :source => :user
  
  has_many :activities
end
