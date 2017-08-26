class Activity < ApplicationRecord

  has_many :parks

  validates :park, :activity, presence: true

end
