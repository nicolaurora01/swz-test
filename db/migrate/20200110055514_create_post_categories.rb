class CreatePostCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :post_categories do |t|
      t.references :category, foreign_key: true
      t.references :post, foreign_key: true
    end
  end
end
