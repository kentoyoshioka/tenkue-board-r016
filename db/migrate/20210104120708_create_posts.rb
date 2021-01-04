class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.text :name
      t.integer :user_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
