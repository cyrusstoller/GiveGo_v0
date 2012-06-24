class Campaign < ActiveRecord::Base
  attr_accessible :charity_id, :end_date, :owner_id, :start_date
end
