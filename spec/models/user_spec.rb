# == Schema Information
# Schema version: 20120624053430
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
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end