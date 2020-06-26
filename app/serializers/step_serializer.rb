class StepSerializer < ActiveModel::Serializer
  attributes :id, :direction, :statement, :goal_id

  belongs_to :goal
end
