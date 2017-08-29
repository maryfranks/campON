class Park < ApplicationRecord

  has_many :trips

  def self.activity_list
      return ['biking', 'birding', 'boating', 'canoeing', 'fishing', 'hiking', 'Hunting', 'swimming']
  end

end
