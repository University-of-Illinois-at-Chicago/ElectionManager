class Election < ActiveRecord::Base
  CURRENT_DATE = DateTime.now
  attr_accessible :contact, :description, :end_dt, :start, :title, :updid, :user_id
  validates :contact, :presence => true
  validates_format_of :contact, :with => /@/

  validates :start, :presence => true
  validates :title, :presence => true

  belongs_to :users
  has_many :ballots

  has_many :questions
  has_many :voters


  def owner
    owner = User.find(user_id)
    owner.netid
  end

  def is_pending?
    CURRENT_DATE < start 
  end

  def is_running?
    CURRENT_DATE < end_dt && CURRENT_DATE > start 
  end

  def is_finished?
    CURRENT_DATE > end_dt
  end

  def status
    return "Finished" if is_finished?
    return "Running" if is_running?
    return "Pending" if is_pending?
  end

end
