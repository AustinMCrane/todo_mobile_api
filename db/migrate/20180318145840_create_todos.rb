class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :task, null: false
      t.integer :status_id, null: false
      t.integer :todo_list_id, null: false

      t.timestamps
    end
  end
end
