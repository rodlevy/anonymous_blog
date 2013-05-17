get '/' do
  p Post.all
  p Tag.all
  p Entry.all

    erb :index
end

get '/show_posts' do
  @posts = Post.all
  erb :posts
end

get '/create_post' do
  erb :create_post
end

post '/create_post' do
  @post = Post.new(params[:post])
  if @post.save
    redirect '/'
  else
    erb :create_post
  end
end

get '/delete_post' do
  @posts = Post.all
  p @posts
    erb :delete_post
end

post '/delete_post/:title' do
  params[:title].inspect
  @post = Post.find_by_title(:title)
  @post.destroy
  "Post Deleted!"
end

get '/edit_post' do
  @posts = Post.all
  erb :edit_post
end

get '/show_tags' do
  @tags = Tag.all
  erb :show_tags
end

get '/:post' do
  title = params[:post]
  @current_post = Post.find_by_title(title)
  erb :show_post

end

get '/tags/:tag' do
  tag_from_params = params[:tag]
  tag = Tag.find_by_category(tag_from_params)
  if tag.nil?
    halt 404
  else
    @posts = tag.posts
    erb :posts
  end
end



post '/show_posts' do
  p params.inspect
  p @post = Post.find_by_title(params[:post_title])
  @post.update_attributes(:body => params[:new_body].to_s)
  erb :index



end
