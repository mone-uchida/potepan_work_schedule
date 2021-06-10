class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :started_at
      t.datetime :finished_at
      t.boolean :completed, null: false
      t.string :memo

      t.timestamps
    end
  end
end
