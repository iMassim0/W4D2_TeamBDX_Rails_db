class User < ApplicationRecord

  has_many :pins

  has_many :posts


end
