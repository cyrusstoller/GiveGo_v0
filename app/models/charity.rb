class Charity < ActiveRecord::Base
  attr_accessible :description, :name, :video_link, :video_type
end
