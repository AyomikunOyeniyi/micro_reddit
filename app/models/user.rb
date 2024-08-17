class User < ApplicationRecord
  validates :username,  presence: true, length: { minimum: 7 }, uniqueness: true
  validates :email,  presence: true, format: { with: /\A\S+@\S+\Z/, message: "must be valid email address" }

  has_many :posts
end
