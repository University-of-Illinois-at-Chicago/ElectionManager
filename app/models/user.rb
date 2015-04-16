class User < ActiveRecord::Base
  attr_accessible :fname, :lname, :netid, :updid
  has_many :elections
end
