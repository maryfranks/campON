require 'bcrypt'

class User < ApplicationRecord

  has_secure_password 

  has_many :messages
  has_and_belongs_to_many :trips

validates :name, :email, :password_digest, presence: true

end
