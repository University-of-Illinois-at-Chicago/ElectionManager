class Election < ActiveRecord::Base
  attr_accessible :contact, :description, :end, :owner, :start, :title, :updid
end