class Post < ActiveRecord::Base
    has_many :comments
    mount_uploader :image, ImageUploader
    has_many :links
    has_many :hashtags, through: :links
    
end
