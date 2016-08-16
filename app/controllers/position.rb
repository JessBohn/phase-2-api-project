get '/positions/:id' do
  @position = Position.find(params[:position_id])
  @user = @position.user

  erb :"positions/show"
end

get '/positions/:id/edit' do
  @position = Position.find(params[:position_id])
  @user = @position.user
  erb :"positions/edit"
end

put '/positions/:id' do
  @position = Position.find(params[:position_id])
  @user = @position.user

  @position.evaluations.create(summary: params[:summary],
                               probation: (params[:probation] == 'yes' ? true : false))
  redirect "/positions/#{@position.id}"
end
