class Comment < ApplicationRecord

  belongs_to :user

  belongs_to :post

  has_many :comment_to_cs

end
