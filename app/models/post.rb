class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  def liked_by_user?(user)
    likes.where(user: user).present?
  end
  
  validates :body, presence: true
end