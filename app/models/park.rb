class Park < ApplicationRecord

  has_many :activities
  has_many :trips

end
