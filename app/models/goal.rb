class Goal < ApplicationRecord
  has_many :steps
  validates :mission, :outcome, :deadline, presence: true
  validates_inclusion_of :outcome, :in => ['SUCCESS!', 'FAILURE', 'Get after it!']
end
