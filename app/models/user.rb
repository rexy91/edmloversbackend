class User < ApplicationRecord
    has_many :music_videos 
    has_secure_password
end
