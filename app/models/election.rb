class Election < ActiveRecord::Base
  belongs_to :user

  validates :start, :presence => true
end
