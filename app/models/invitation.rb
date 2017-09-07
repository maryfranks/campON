class Invitation < ApplicationRecord

  belongs_to :trip

  validates :email, :trip_id, presence: true

end
