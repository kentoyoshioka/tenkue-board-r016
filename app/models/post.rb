class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :content, presence: true, length: { maximum: 140 }

  def display_created_at
    I18n.l(self.created_at, format: :long)
  end

  def like_count
    likes.count
  end
end
