class Relationship < ApplicationRecord

  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  validates :follower_id, presence: true
  validates :followed_id, presence: true
  
  def following_users(followeds)
    followeds.map { |id| User.find(id) }
  end
end
