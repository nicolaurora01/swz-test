class Category < ApplicationRecord
  has_many :post_categories
  has_many :post , through: :post_categories
  validates :name,presence: true, length: { minimum: 3, maximum: 50 }
  validates_uniqueness_of :name

end