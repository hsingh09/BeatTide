class Post < ActiveRecord::Base

  belongs_to :user

  validates :song_id, :user_id, :presence => true

end
