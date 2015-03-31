class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category
      t.timestamps null:false
    end
  end
end

#bundle exec rake generate:migration NAME='create_categories'
