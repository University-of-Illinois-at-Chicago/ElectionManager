class Ballot < ActiveRecord::Base
  attr_accessible :election_id, :time
  belongs_to :elections, dependent: :destroy
end
