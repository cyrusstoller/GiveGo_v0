# == Schema Information
# Schema version: 20120624052429
#
# Table name: sponsors
#
#  id              :integer         not null, primary key
#  user_id         :integer
#  amount_per_mile :float
#  paid            :boolean
#  receipt_token   :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class Sponsor < ActiveRecord::Base
  attr_accessible :amount_per_mile, :paid, :receipt_token, :user_id
end
