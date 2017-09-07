class Message < ApplicationRecord

  belongs_to :user
  belongs_to :trip

  validates :user_id, :trip_id, :message,  presence: true

end
