class User < ApplicationRecord
    has_many :music_videos 
    has_many :posts
    has_secure_password

    validates :username, presence: true, length: { minimum: 5, maximum: 10}
    validates :password, presence: true, length: { minimum: 7, maximum: 20}
    validates :email, uniqueness: true
end
