class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title
      t.string :post_body
      t.integer :category_id
      t.timestamps null:false
    end
  end
end

##bundle exec rake generate:migration NAME='create_posts'