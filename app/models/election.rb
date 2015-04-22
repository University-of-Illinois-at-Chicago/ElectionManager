class Election < ActiveRecord::Base
  CURRENT_DATE = DateTime.now
  attr_accessible :contact, :description, :finish, :start, :title, :updid, :user_id
  validates :contact, :presence => true
  validates_format_of :contact, :with => /@/

  validates :title, :presence => true
  belongs_to :users
  has_many :ballots

  has_many :questions
  has_many :voters
  
  validate :validate_data


  def owner
    owner = User.find(user_id)
    owner.netid
  end

  def is_pending?
    CURRENT_DATE < start 
  end

  def is_running?
    CURRENT_DATE < finish && CURRENT_DATE > start 
  end

  def is_finished?
    CURRENT_DATE > finish 
  end

  def status
    return "Finished" if is_finished?
    return "Running" if is_running?
    return "Pending" if is_pending?
  end

  private
  def validate_data
    if (start > finish)
      errors.add(:election, "Start must be before finish")
    end 

    if (start < CURRENT_DATE)
      errors.add(:election, "Start cannot be in the past.")
    end
  end

end
