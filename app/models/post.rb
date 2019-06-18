class Post < ApplicationRecord
    belongs_to:user
    has_many:comments
    has_many:likes
    has_many:liked_users, through: :likes, source:User
    
    def self.search(search)
       search=Post.where("title Like ? or content Like ?", "%#{search}%", "%#{search}%") 
    end
end
