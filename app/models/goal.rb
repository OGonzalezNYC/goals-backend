class Goal < ApplicationRecord
  has_many :steps
  validates :mission, :outcome, presence: true
end
  #validates :mission, :outcome, :deadline, presence: true

  #validates_inclusion_of :outcome, :in => ['SUCCESS!', 'FAILURE', "Get after it!"]

  # def deadline_has_passed
  #   if DateTime.now > self.deadline
  #     self.outcome = "FAILURE"
  #     self.save
  #   end
  # end
