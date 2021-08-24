class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :assign_to
      t.string :created_by

      t.timestamps
    end
  end
end
