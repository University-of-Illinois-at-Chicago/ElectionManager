class User < ActiveRecord::Base
  attr_accessible :fname, :lname, :netid, :updid
  belongs_to :election
end
