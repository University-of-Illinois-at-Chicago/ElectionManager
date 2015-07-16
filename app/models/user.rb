class User < ActiveRecord::Base
  attr_accessible :fname, :lname, :netid, :updid
  has_many :elections
  
#   def self.find_from_auth_hash(auth)
#     User.where( netid: auth['info']['netid'])
#   end
end
