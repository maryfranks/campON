class Trip < ApplicationRecord

  has_many :users
  belongs_to :park

  has_many :messages, through: :users


end
