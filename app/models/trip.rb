class Trip < ApplicationRecord

  has_and_belongs_to_many :users
  belongs_to :park, optional: true
  has_many :messages
  has_many :todos
  has_many :invitations


  validates :name, presence: true


    def self.
    end

end
