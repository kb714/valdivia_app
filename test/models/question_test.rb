# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  survey_id     :integer
#  name          :text
#  description   :text
#  question_type :string
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
