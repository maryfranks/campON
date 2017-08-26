class Trip < ApplicationRecord

belongs_to :park
belongs_to :user
has_many :messages

end
