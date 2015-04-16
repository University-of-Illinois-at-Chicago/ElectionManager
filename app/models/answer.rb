class Answer < ActiveRecord::Base
  attr_accessible :answer, :election_id, :question_id, :updid
end
