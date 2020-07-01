# Serializers control what info will be sent through json.
class GoalSerializer < ActiveModel::Serializer
  #attributes :id, :mission, :outcome, :deadline, :created_at #makes it neater in the JS console
  attributes :id, :mission, :outcome, :created_at
  has_many :steps #essentially adds a key of "steps" to each "goal" object, the corresponding value being an array of the goal's steps.
end
