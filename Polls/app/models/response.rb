# == Schema Information
#
# Table name: responses
#
#  id        :bigint(8)        not null, primary key
#  user_id   :integer          not null
#  answer_id :integer          not null
#

class Response < ApplicationRecord
  validates :user_id, :answer_id, presence: true
  validate not_duplicate_response?


  def belongs_to

  end

  def not_duplicate_response?
    #start from responses
    #then go through answer_id to question
    #find the question ID
    #for question_id, find all of the associated answers
    #find all the users associated with those answers (requires going back to responses)
    #finally, ensure the present user isn't in that list
    u_id = self.user_id 
    question_id
     = Response.find_by_sql([<<-SQL, self.user_id])


    SQL
  end

end
