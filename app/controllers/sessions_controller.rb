get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.where(email: params[:user][:email]).first
  if @user && @user.authenticate?(params[:user][:hashed_password])
    session[:id] = @user.id
    redirect "users/#{@user.id}"
  else
    @errors = []
    @errors << "incorrect username or password"
   erb :'sessions/new'
 end
end

delete '/sessions/:id' do
  session[:id] = nil
  redirect '/sessions/new'
end
