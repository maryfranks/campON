class Trip < ApplicationRecord

  has_and_belongs_to_many :users
  belongs_to :park
  has_many :messages

  validates :name, presence: true

end
