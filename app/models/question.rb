class Question < ApplicationRecord
  # relations
  belongs_to :survey, optional: true
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

  # validations
  validates :name, presence: true
end
