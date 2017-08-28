class Trip < ApplicationRecord

  has_and_belongs_to_many :users
  belongs_to :park
  has_many :messages

  validates :trip_name, :user_id, presence: true

end
