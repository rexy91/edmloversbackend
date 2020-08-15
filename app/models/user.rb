class User < ApplicationRecord
    has_many :music_videos 
    has_many :posts
    has_secure_password

    # Will return an array of follows for the given user instance
    has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"
    
    # Will return an array of users who follow the user instance
    has_many :followers, through: :received_follows, source: :follower

    # returns an array of follows a user gave to someone else
    has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"
  
    # returns an array of other users who the user has followed
    has_many :followings, through: :given_follows, source: :followed_user

    validates :username, presence: true, length: { minimum: 5, maximum: 10}
    validates :password, presence: true, length: { minimum: 7, maximum: 20}
    validates :username, uniqueness: true
end