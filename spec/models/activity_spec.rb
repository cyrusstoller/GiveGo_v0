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

require 'spec_helper'

describe Activity do
  pending "add some examples to (or delete) #{__FILE__}"
end
