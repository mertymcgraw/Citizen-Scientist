get '/dive_entries'do
 @user_dive_entries = current_user.dive_entries
  erb :'dive_entries/index'
end

get '/dive_entries/new' do
  erb :'dive_entries/new'
end

get '/dive_entries/:id' do

  @user_dive_entries = current_user.dive_entries
  @dive_entry = current_user.dive_entries.find(params[:id])
  erb :'dive_entries/show'
end

post '/dive_entries' do
  p "***********"
  p params
  location_id = Location.find_by(location_name:params[:location]).id
  @dive_info = params[:dive_details]
  @dive_info["location_id"] = location_id
  @new_dive = DiveEntry.new(@dive_info)
  if @new_dive.save
    redirect :"/dive_entries"
  else
    @errors = @new_dive.errors.full_messages
    erb :'dive_entries/new'
  end
end

delete '/dive_entries/:id' do
  @dive_entry = DiveEntry.find(params[:id])
  @dive_entry.destroy
  redirect '/dive_entries'
end
