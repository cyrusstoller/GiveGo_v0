# == Schema Information
# Schema version: 20120624052429
#
# Table name: charities
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  video_link  :string(255)
#  video_type  :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'spec_helper'

describe Charity do
  pending "add some examples to (or delete) #{__FILE__}"
end
