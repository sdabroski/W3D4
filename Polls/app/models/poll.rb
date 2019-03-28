# == Schema Information
#
# Table name: polls
#
#  id      :bigint(8)        not null, primary key
#  title   :string           not null
#  user_id :integer          not null
#

class Poll < ApplicationRecord
  validates :user_id, :title, presence: true
end
