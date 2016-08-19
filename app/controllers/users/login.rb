get '/login' do
  erb :"users/login"
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user.password == params[:password]
    session.delete(:nonval_user)
    session[:user] = @user
    redirect '/'
  else
    session[:nonval_user] = @user
    redirect '/login'
  end
end

get '/logout' do
  session.delete(:user)
  redirect '/'
end
