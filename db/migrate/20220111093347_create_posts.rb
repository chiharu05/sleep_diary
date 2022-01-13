class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.datetime :date_and_time, null: false
      t.integer  :kind_id      , null: false
      t.text     :memo
      t.timestamps
    end
  end
end
