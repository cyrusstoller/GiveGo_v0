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

class User < ActiveRecord::Base
  attr_accessible :dwolla_customer_token, :email, :fb_id, :name
end
