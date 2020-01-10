class Post < ApplicationRecord
  belongs_to :user
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comment_posts
  has_many :comment, through: :comment_posts
end
