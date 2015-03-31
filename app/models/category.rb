class Category < ActiveRecord::Base
  has_many :posts
end


#bundle exec rake generate:model NAME='Category'