class CreateStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :statuses do |t|
      t.string :name, null: false
      t.integer :todo_list_id, null: false

      t.timestamps
    end
  end
end
