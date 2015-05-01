class Question < ActiveRecord::Base
  attr_accessible :election_id, :limit, :question, :updid, :write_in
  belongs_to :election, :class_name => "Election", :foreign_key => "election_id", dependent: :destroy
  has_many :answers
  validates :question, :presence => true

end
