get '/dive_entries'do
 @user_dive_entries = current_user.dive_entries
  erb :'dive_entries/index', layout: !request.xhr?
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
  ###create new location if one does not already exits in db
  @dive_info = params[:dive_details]
  location = Location.find_by(location_name: params[:location])
    if location != nil
      @dive_info["location_id"] = location.id
    else
      @new_location = Location.create(location_name: params[:location])
      @dive_info["location_id"] = @new_location.id
    end
  ###create new dive
  @new_dive = DiveEntry.new(@dive_info)
  if @new_dive.save
    if request.xhr?
      ##check if location has an environmental study
      @environmental_study = @new_dive.location.environmental_studies.first
      p "***********"
      p @environmental_study
      p @environmental_study.survey_questions
      p @environmental_study.survey_questions.first.question
      if @environmental_study != nil
        erb :'environmental_studies/_environmental_study_form'
      else
        p "$$$$$$$$$$$$$$$$$$"
        erb :"dive_entries/index"
      end
    end
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
