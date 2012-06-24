# == Schema Information
# Schema version: 20120624052429
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
#

require 'spec_helper'

describe Campaign do
  pending "add some examples to (or delete) #{__FILE__}"
end
