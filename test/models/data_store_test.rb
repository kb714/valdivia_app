# == Schema Information
#
# Table name: data_stores
#
#  id         :integer          not null, primary key
#  survey_id  :integer
#  surveys    :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DataStoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
