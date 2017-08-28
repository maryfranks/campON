class Trip < ApplicationRecord

  has_many :users
  belongs_to :park

  has_many :messages, through: :users

  validates :trip_name, :user_id, presence: true

end
