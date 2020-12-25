class AddUserIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :user, type: :bigint, foreign_key: true
  end
end
