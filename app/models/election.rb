class Election < ActiveRecord::Base
  attr_accessible :contact, :description, :end, :owner, :start, :title, :updid
  has_many :questions
  has_many :users
end
