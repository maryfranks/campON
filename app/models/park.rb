class Park < ApplicationRecord

  has_many :activities
  has_many :trips

  validates :name, :adress, :activities_id, presence: true

end
