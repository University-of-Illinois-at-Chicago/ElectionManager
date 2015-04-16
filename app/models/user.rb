class User < ActiveRecord::Base
  attr_accessible :fname, :lname, :netid, :updid
end
