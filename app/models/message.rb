class Message < ApplicationRecord

  belongs_to :user
  belongs_to :trip

  validates :user_id, :message, :trip_id, :session_id, presence: true

end
