class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :task, index: true
      t.string :state
      t.integer :feeling
      t.integer :progress

      t.timestamps
    end
  end
end
