class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :subject
      t.text :detail
      t.datetime :started_on
      t.datetime :finished_on
      t.datetime :due_date
      t.integer :status_id
      t.string :tag_id
      t.integer :icon_id
      t.boolean :is_current
      t.boolean :is_indicated

      t.timestamps
    end
  end
end
