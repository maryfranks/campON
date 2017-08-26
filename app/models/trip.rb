class Trip < ApplicationRecord

  has_many :users
  belongs_to :park

  has_many :messages, through: :users

  validates :trip_name, :start_date, :end_date, :user_id, :park_id, presence: true

end
