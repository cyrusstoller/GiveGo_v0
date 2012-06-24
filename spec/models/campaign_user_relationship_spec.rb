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

require 'spec_helper'

describe CampaignUserRelationship do
  pending "add some examples to (or delete) #{__FILE__}"
end
