class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :funding_goal
      t.datetime :end_date
      t.datetime :start_date
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
