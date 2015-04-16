class Vote < ActiveRecord::Base
  attr_accessible :answer_id, :ballot_id
end
