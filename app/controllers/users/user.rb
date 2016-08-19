get '/users' do
  erb :"users/index"
end

get '/users/:id' do
  @user = User.find_by(username: params[:username])
  erb :"users/show"
end

# get '/users/:id/edit' do
  # @user = User.find(params[:user_id])
  # erb :"postions/new"
# end
#
# put '/users/:id' do
  # user = User.find(params[:user_id])
  # redirect '/users'
# end
#
