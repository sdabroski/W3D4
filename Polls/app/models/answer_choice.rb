# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  answer      :text             not null
#  question_id :integer          not null
#

class AnswerChoice < ApplicationRecord
  validates :answer, :question_id, presence: true
end
