# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]

* Rails version - 7.0.6 

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* JSON file used to practice will be here as a comment
<!-- "[{\"id\":4,\"name\":\"Remnant: From the Ashes\",\"genre\":\"Shooter\",\"price\":6999,\"release_date\":\"2019-08-20\",\"created_at\":\"2023-07-18T02:07:09.835Z\",\"updated_at\":\"2023-07-18T02:07:09.835Z\",\"test_rename\":null},{\"id\":2,\"name\":\"Borderlands 3\",\"genre\":\"Shooter\",\"price\":5999,\"release_date\":\"2019-09-13\",\"created_at\":\"2023-07-18T01:13:19.271Z\",\"updated_at\":\"2023-07-19T01:15:35.117Z\",\"test_rename\":null},{\"id\":1,\"name\":\"Rune Factory 4 Special\",\"genre\":\"Role-playing (RPG)\",\"price\":2999,\"release_date\":\"2019-07-25\",\"created_at\":\"2023-07-18T01:03:24.953Z\",\"updated_at\":\"2023-07-18T01:03:24.953Z\",\"test_rename\":null},{\"id\":6,\"name\":\"Cyberpunk 2077\",\"genre\":\"Role-playing (RPG)\",\"price\":2999,\"release_date\":\"2020-09-17\",\"created_at\":\"2023-07-18T02:07:09.847Z\",\"updated_at\":\"2023-07-18T02:07:09.847Z\",\"test_rename\":null},{\"id\":8,\"name\":\"Children of Morta\",\"genre\":\"Role-playing (RPG)\",\"price\":2999,\"release_date\":\"2019-09-03\",\"created_at\":\"2023-07-18T02:07:09.857Z\",\"updated_at\":\"2023-07-18T02:07:09.857Z\",\"test_rename\":null},{\"id\":7,\"name\":\"Pokémon Shield\",\"genre\":\"Role-playing (RPG)\",\"price\":2999,\"release_date\":\"2019-11-15\",\"created_at\":\"2023-07-18T02:07:09.852Z\",\"updated_at\":\"2023-07-19T01:59:20.927Z\",\"test_rename\":null}]" -->

* Here are the commands I used on the rails console to play around with the database
<!-- #Interact with database in the rails console
Game.all #Selects all elements on the game database

#Delete the entire database
rails db:drop
rails db:create
rails db:migrate

#If we make an error
1. Delete schema on db - migrate - schema.rb
2. Apply changes on db - migrate - migration file (several numbers)
3. rails db:drop
4. rails db:create

#How to add a new game to our data base, and use rails console command above
game = Game.new
game.name = "Ace Combat 4"
game #Checks what has been created so far
game.genre = "Simulator"

#How to create the class records on our database
game.create

#Crud operations for setting up a table - Starting from section 5
https://guides.rubyonrails.org/active_record_basics.html#creating-active-record-models

#Create a new game table, directly on the rails console
game = Game.create(name: "Rune Factory 4 Special", genre: "Role-playing (RPG)", price: 5999, release_date:'2019-07-25')

#Do the same thing but step by step
game = Game.new
game.name = "LOL"
game.genre = "Suffering"
game.save #Saves any changes

#Verify that the games where created on the database
psql -d Rails_basic_models_development #Found in config - database.yml
SELECT * FROM games;

#Delete all the data bases
rails db:drop
rails db:create
rails db:migrate

#Models exercices
#Create new game borderlands 3
game = Game.new
game.name = "Borderlands 3"
game.genre = "Simulator"
game.price = 5999
game.release_date = '2019-09-13'
game.save

#Add several games to the database from an array
games_data = [ {:name=>"Zombie Driver: Immortal Edition", :genre=>"Racing", :price=>5999, :release_date=>"2019-Jul-25"},
{:name=>"Remnant: From the Ashes", :genre=>"Shooter", :price=>6999, :release_date=>"2019-Aug-20"},
{:name=>"Monster Hunter: World - Iceborne", :genre=>"Adventure", :price=>6999, :release_date=>"2019-Sep-06"},
{:name=>"Cyberpunk 2077", :genre=>"Role-playing (RPG)", :price=>4999, :release_date=>"2020-Sep-17"},
{:name=>"Pokémon Shield", :genre=>"Role-playing (RPG)", :price=>5999, :release_date=>"2019-Nov-15"},
{:name=>"Children of Morta", :genre=>"Role-playing (RPG)", :price=>6999, :release_date=>"2019-Sep-03"} ]
#We assigned the values to a variable, now we have to reach for each element on the array
games_data.each { |game| Game.create (game) } # the last game is as if we had game.genre...

#Accesing the game data
Game.all #Access all games

Game.find_by(id:4) #Show only the game with id 4

Game.find_by(release_date:'2019-08-20') #Find the game that was released on 2019-08-20

Game.first #Get the first game, .last .third and so on...

Game.order(release_date: :desc) #Sort all games from newest to oldest

Game.where(price: 5999) #Get all games that cost 5999

Game.where('extract(year from release_date)=?',2019) #Get all games released on 2019, the exclamation mark indicates a comparation will be made, the comma allows us to introduce the value
Game.where('extract(year from release_date)=? and id=?',2019,4) #Several parameters

#Change the data by assigning the value to a variable on rails console
game_up = Game.find_by(name:"Borderlands 3")
game_up.genre = "Shooter"
game_up.save #This saves all the changes, otherwise it'll remain on the RAM memory

#Find Pokemon game and update its price to 3999
pokemon_up = Game.find_by(name: "Pokémon Shield")
pokemon_up.update(price: 3999)

#Update several objects with a common category
games_rpg = Game.where(genre: "Role-playing (RPG)" #This saves all the objects first on a variable
games_rpg.update_all(price: 2999)

#Do the same but just one line
Game.update_all("genre= 'Role-playing (RPG)', price=1999")

#Find and destroy object number 3
Game.find(3).destroy

#Destroy objects by a common parameter
Game.destroy_by(genre: "Adventure") -->