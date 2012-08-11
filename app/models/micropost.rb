class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  
  belongs_to :user
  
  validates :content, :length => { :minimum => 0, :maximum => 140 }
end
