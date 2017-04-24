get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.where(email: params[:user][:email]).first
    redirect "users/#{@user.id}"
end

delete '/sessions/:id' do
  session[:id] = nil
  redirect '/sessions/new'
end
