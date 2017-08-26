class User < ApplicationRecord

  has_many :messages
  has_many :trips

validates :name, :email, :password_digest, presence: true

end
