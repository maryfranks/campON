class Todo < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :trip

  validates :text, presence: true

end
