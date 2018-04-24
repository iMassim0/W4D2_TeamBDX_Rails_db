class User < ApplicationRecord

  has_many :posts

  has_many :comments

  has_many :comment_to_cs

end
