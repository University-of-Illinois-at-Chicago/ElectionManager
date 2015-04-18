class Election < ActiveRecord::Base
  attr_accessible :contact, :description, :end, :start, :title, :updid, :user_id
  validates :contact, :presence => true
  validates :end, :presence => true
  validates :start, :presence => true
  validates :title, :presence => true
  has_many :ballots
  has_many :questions
  has_many :voters
  belongs_to :users

  def owner
    owner = User.find(user_id)
    owner.netid
  end

end
