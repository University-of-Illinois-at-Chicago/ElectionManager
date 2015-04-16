class Question < ActiveRecord::Base
  attr_accessible :election_id, :limit, :question, :updid, :write_in
  belongs_to :election, dependent: :destroy
  has_many :answer
end
