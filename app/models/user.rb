class User < ApplicationRecord
  has_many :posts
  has_many :comments
  
  validates :name, presence: true, length: { minimum: 5 }, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }
end
