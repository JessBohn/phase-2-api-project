get '/login' do
  erb :"users/login"
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user.password == params[:password]
    redirect '/'
  else
    redirect '/login'
  end

end

