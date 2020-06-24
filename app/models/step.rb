class Step < ApplicationRecord
  belongs_to :goal
  validates :statement, :direction, presence: true
  validates_inclusion_of :direction, :in => ['forward', 'backwards']
end
