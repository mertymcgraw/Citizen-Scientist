get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect :"/users/#{@user.id}"

  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  if params[:id].to_i == session[:id]
    erb :'users/show'
  else
    @errors = ["you must log in to view this page"]
    erb :'sessions/new'
  end
end

get '/users/:user_id/dive_stats' do
  @total_number_of_dives = current_user.dive_entries.count
  @total_time_underwater = current_user.total_time_underwater
  @max_depth = current_user.max_depth
  @max_depth_location = current_user.dive_entries.find_by(depth: @max_depth)
  erb :'dive_stats/index'
end
