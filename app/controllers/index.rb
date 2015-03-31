get '/craigslist' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories/:id/posts' do
  @category = Category.where(id: params[:id]).first
  @posts = Post.where(category_id: params[:id])
  erb :posts
end

post '/categories/:id/posts' do
  @post = Post.find(params[:id])
  byebug
  @post.update_attributes(params[:post])
  byebug
  redirect to("/categories/#{@post.category_id}/posts")
end

get '/posts/:id/edit' do
  @post = Post.where(id: params[:id])
  byebug
  erb :edit_post
end

get '/categories/:id/new' do
  @category = Category.find(params[:id])
  byebug
  erb :new_post
end

post '/categories/:id/new' do
  @category = Category.find(params[:category])
  @post = Post.create(post_title: params[:title], post_body: params[:body])
  @category.posts << @post #check with JAY WHAT THIS MEANS
  redirect to("/categories/#{@category.id}/posts")
end




#first i need to get the faker data into category/posts table (DONE)
# then i should tag each posts to a category_id (DONE)
#after tagging, i should be directed to erb:index..which displays all the categories (DONE)
#within sub-category page
  #1. selecting the categories, i should be able to view all the relevant posts
  #2. for each post, if i am the same user(session id). should be able to edit my post (make sure I am posted to the NEW post id page to edit)
  #3. also be allowed to post a new post within that category
#Whether it is edit or new post, i should be directed to the category page
#last but not least, i should be able to sign out from the category page