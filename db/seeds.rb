# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# goal_1 = Goal.create(mission: 'Reduce my weight to 199 pounds', outcome: 'Get after it!', deadline: DateTime.new(2020, 8, 31))
goal_1 = Goal.create(mission: 'Reduce my weight to 199 pounds', outcome: 'Get after it!')
#goal_2 = Goal.create(mission: 'Get married', outcome: 'Get after it!', deadline: DateTime.new(2021, 10, 21))
goal_2 = Goal.create(mission: 'Get married', outcome: 'Get after it!')
step_1 = Step.create(goal_id: 1, direction: "forward", statement: "I joined a gym today.")
step_2 = Step.create(goal_id: 1, direction: "backwards", statement: "I ate chocolate cake today.")
