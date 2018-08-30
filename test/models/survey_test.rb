# == Schema Information
#
# Table name: surveys
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  expiration  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  banner      :string
#  start_at    :datetime
#  deleted_at  :datetime
#

require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
