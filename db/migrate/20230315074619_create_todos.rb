class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.integer :priority

      t.timestamps
    end
  end
end
