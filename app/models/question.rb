class Question < ActiveRecord::Base
  attr_accessible :election_id, :limit, :question, :updid, :write_in
end
