class User < ActiveRecord::Base

  has_many :posts, :dependent => :destroy

  validates :fb_id, :username, :active, :presence => true
  validates :username, :length => { :maximum => 20 }
  validates :age, :numericality => { :only_integer => true,
  	    	  		     :greater_than => 12,
				     :less_than => 140 }
end
