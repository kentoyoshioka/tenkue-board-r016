class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def has_written?(post)
    posts.exists?(id: post.id)
  end
end
