class CreateCommentPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_posts do |t|
      t.references :comment, foreign_key: true
      t.references :post, foreign_key: true
    end
  end
end
