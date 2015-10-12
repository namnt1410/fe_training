class CreateUserLogs < ActiveRecord::Migration
  def change
    create_table :user_logs do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :user_logs, [:user_id, :created_at]
  end
end
