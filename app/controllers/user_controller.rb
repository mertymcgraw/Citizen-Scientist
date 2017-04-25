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
    @errors = ["please log in to view your profile page"]
    erb :'sessions/new'
  end
end
