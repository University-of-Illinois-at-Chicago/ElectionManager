class Answer < ActiveRecord::Base
  attr_accessible :answer, :election_id, :question_id, :updid
  belongs_to :question, dependent: :destroy
end
