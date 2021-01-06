class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy

  def has_written?(post)
    posts.exists?(id: post.id)
  end

end
