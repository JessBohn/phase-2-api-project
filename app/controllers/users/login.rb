# get '/login' do
  # erb :"users/login"
# end
#
# post '/login' do
  # @user = User.find_by(email: params[:email])
  # if @user.password == params[:password]
    # redirect '/'
  # else
    # redirect '/login'
  # end
#
# end


# post '/login' do
#   @user = User.find_by(username: params[:username])
#   if @user.username == params[:username]
#     session[:user] = @user.username
#     redirect '/cats'
#   else
#     @errors = "Invalid username or password"
#     redirect '/login'
#   end
# end
