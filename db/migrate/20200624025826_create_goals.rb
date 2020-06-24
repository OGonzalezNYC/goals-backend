class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :mission
      t.string :outcome, default: 'Get after it!'
      t.datetime :deadline

      t.timestamps
    end
  end
end
