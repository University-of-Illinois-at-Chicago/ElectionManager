class Voter < ActiveRecord::Base
  attr_accessible :election_id, :updid, :user_id, :voted
  belongs_to :elections
end
