# == Schema Information
#
# Table name: questions
#
#  id       :bigint(8)        not null, primary key
#  poll_id  :integer          not null
#  question :text             not null
#

class Question < ApplicationRecord
  validates :poll_id, :question, presence: true
end
