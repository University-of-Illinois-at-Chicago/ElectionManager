class VoterList < ActiveRecord::Base
  attr_accessible :election_id, :updid, :user_id, :voted
end
