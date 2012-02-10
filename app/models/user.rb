class User < ActiveRecord::Base
  attr_accessible :username, :first_name, :last_name, :facebook_id,
                  :age, :likes, :active

  has_many :posts, :dependent => :destroy

  has_many :subscriptions, :foreign_key => "subscriber_id",
                           :dependent => :destroy
  has_many :reverse_subscriptions, :dependent => :destory,
                                   :foreign_key => "subscribed_id"
                                   :class_name => "Subscription"

  # To access a User object's subscribed-to-user list, access User.subscribing
  has_many :subscribing, :through => :subscriptions
                         :source => :subscribed
  has_many :subscribers, :through => :reverse_subscriptions
                         :source => :subscriber


  validates :facebook_id, :presence => true,
                          :uniqueness => true
  validates :username, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true

end
