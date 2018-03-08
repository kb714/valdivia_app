# == Schema Information
#
# Table name: survey_files
#
#  id         :integer          not null, primary key
#  survey_id  :integer
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SurveyFileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
