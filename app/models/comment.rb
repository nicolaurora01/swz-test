class Comment < ApplicationRecord
  belongs_to :user
  has_many :comment_posts
  has_many :post , through: :comment_posts
  validates :name,presence: true, length: { minimum: 3, maximum: 25 }
  validates_uniqueness_of :name
end
