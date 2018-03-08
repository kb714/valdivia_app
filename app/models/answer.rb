# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  question_id :integer
#  content     :text
#  value       :string
#

class Answer < ApplicationRecord
  belongs_to :question, optional: true
end
