class Post < ActiveRecord::Base
  belongs_to :category
end

#bundle exec rake generate:model NAME='Post'