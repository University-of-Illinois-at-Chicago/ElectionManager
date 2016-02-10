class Election < ActiveRecord::Base
  attr_accessor :start, :finish
  belongs_to :user

  validate :validate_data
  validates :start, :presence => true
  validates :finish, :presence => true
  validates :title, :presence => true
  validates :contact, :presence => true
  validates_format_of :contact, :with => /@/


  private
  CURRENT_DATE = DateTime.now
  def validate_data
    if(:start > :finish)
      errors.add(:election, "Start cannot be in the past")
    end

  #  if (:start <= CURRENT_DATE)
   #   errors.add(:election, "Start cannot be in the past or today")
  #  end 
  end 


end
