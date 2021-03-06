class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.datetime :start_time, null: false
      t.integer  :kind_id   , null: false
      t.text     :memo
      t.integer  :user_id,    foreign_key: true
      t.timestamps
    end
  end
end
