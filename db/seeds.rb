User.destroy_all
Location.destroy_all
DiveEntry.destroy_all
EnvironmentalStudy.destroy_all
EnvironmentalStudyLocation.destroy_all


merty_details = {   :name => "Merty McGraw",
                    :dive_certification => "divemaster",
                    :email => "mertymcgraw@gmail.com",
                    :password => "password"}

jackie_details = {  :name => "Jackie McGraw",
                    :dive_certification => "open water",
                    :email => "jackiemcgraw@gmail.com",
                    :password => "password"}

sheila_details = {  :name => "Sheila McGraw",
                    :dive_certification => "advance open water",
                    :email => "sheilamcgraw@gmail.com",
                    :password => "password"}


haley_details = {   :name => "Haley Kannall",
                    :dive_certification => "open water",
                    :email => "haleykannall@gmail.com",
                    :password => "password"}

User.create(merty_details)
User.create(jackie_details)
User.create(sheila_details)
User.create(haley_details)



Location.create([
  {location_name: "Koh Tao"},
  {location_name: "Komodo National Park"},
  ])

DiveEntry.create([
  {date: "06/27/2016", dive_site: "Shark Island", location_id: 1, dive_time: 38, depth: 18, diver_id: 1, temperature: 30, visibility: 20 },
  {date: "06/27/2016", dive_site: "Chumphon Pinnacle", location_id: 1, dive_time: 45, depth: 30, diver_id: 1, temperature: 29, visibility: 20 },
  {date: "06/27/2016", dive_site: "Red Rock", location_id: 1, dive_time: 51, depth: 17, diver_id: 1, temperature: 26, visibility: 20},
  {date: "06/27/2016", dive_site: "Manta Alley", location_id: 2, dive_time: 62, depth: 15, diver_id: 1, temperature: 29, visibility: 10},
  {date: "06/27/2016", dive_site: "Cauldron", location_id: 2, dive_time: 48, depth: 27, diver_id: 1, temperature: 28, visibility: 22},
  {date: "06/27/2016", dive_site: "Cauldron", location_id: 2, dive_time: 48, depth: 27, diver_id: 2, temperature: 29, visibility: 20},
  {date: "06/27/2016", dive_site: "Cauldron", location_id: 2, dive_time: 48, depth: 27, diver_id: 3, temperature: 29, visibility: 30},
   {date: "06/27/2016", dive_site: "Batu Bolong", location_id: 2, dive_time: 45, depth: 22, diver_id: 2, temperature: 30, visibility: 12},
   {date: "06/27/2016", dive_site: "Batu Bolong", location_id: 2, dive_time: 45, depth: 22, diver_id: 3, temperature: 29, visibility: 24},
   {date: "06/27/2016", dive_site: "White Rock", location_id: 1, dive_time: 39, depth: 27, diver_id: 3, temperature: 26, visibility: 30},
   {date: "06/27/2016", dive_site: "Green Rock", location_id: 1, dive_time: 33, depth: 17, diver_id: 4, temperature: 29, visibility: 21},
   {date: "06/27/2016", dive_site: "Japanese Gardens", location_id: 1, dive_time: 59, depth: 14, diver_id: 4, temperature: 24, visibility: 10},
  ])

EnvironmentalStudy.create([
  {study_name: "turtle population" },
  {study_name: "coral health" },
  {study_name: "shark population" },
  ])

EnvironmentalStudyLocation.create([
  {location_id: 1, environmental_study_id: 1},
  {location_id: 1, environmental_study_id: 2},
  {location_id: 2, environmental_study_id: 2},
  {location_id: 2, environmental_study_id: 3},
  ])
