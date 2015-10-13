get '/users/create_acc' do
  erb :create_acc
end

post '/users/create_acc' do
  @user = User.create(username: params[:user][:username], password: params[:user][:password])
  if @user.valid?
    redirect to('/properties')
  else
    @errors = @user.errors.full_messages
    erb :create_acc
  end
end

post '/users/login' do
  @user = User.authenticate(params[:user][:username], params[:user][:password])
  if @user
    session[:user_id] = @user.id
    redirect to('/properties')
  else
    @errors = "Authentication Failed"
    erb :index
  end
end

get '/users/logout' do
  session.clear
  redirect to('/')
end