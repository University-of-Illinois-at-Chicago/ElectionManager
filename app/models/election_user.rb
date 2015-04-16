class ElectionUser < ActiveRecord::Base
  attr_accessible :edit, :election_id, :updid, :user_id, :view_results
end
