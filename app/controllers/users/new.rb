get '/register' do
  redirect '/users/new'
end

get '/users/new' do
  erb :"users/new"
end

post '/users/new' do
  @user = User.new(params)
  if @user.save
    session.delete(:nonval_user)
    session[:user] = @user
    redirect '/'
  else
    session[:nonval_user] = @user
    redirect '/users/new'
  end
end
