class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :goal_id
      t.string :direction
      t.string :statement

      t.timestamps
    end
  end
end
