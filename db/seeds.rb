require 'faker'

##songs
Song.create(title: "The" + " " + Faker::Hacker.noun.capitalize + " " + "Boogie", chart: 'chart.txt')
Song.create(title: Faker::Hacker.noun.capitalize + " " + "Shuffle", chart: 'chart.txt')
Song.create(title: Faker::Hacker.noun.capitalize + " " + "Foxtrot", chart: 'chart.txt')
Song.create(title: Faker::Hacker.ingverb.capitalize + " " + Faker::Hacker.adjective.capitalize + " " + Faker::Hacker.noun, chart: 'chart.txt')
Song.create(title: Faker::Hacker.ingverb.capitalize + " " + Faker::Hacker.adjective.capitalize + " " + Faker::Hipster.word, chart: 'chart.txt')
Song.create(title: Faker::Hacker.ingverb.capitalize + " " + Faker::Hacker.adjective.capitalize + " " + Faker::Hacker.noun.capitalize + " " + " Oh yeah!", chart: 'chart.txt')
3.times do
  Song.create(title: "Lets all do the" + " " + Faker::Color.color_name.capitalize + " " + Faker::Hacker.noun.capitalize, chart: 'chart.txt')
end
3.times do
  Song.create(title: "Don't eat the" + " " + Faker::Color.color_name.capitalize + " " + Faker::Commerce.product_name, chart: 'chart.txt')
end
Song.create(title: Faker::Hacker.noun.capitalize + " " + " Prominade", chart: 'chart.txt')
Song.create(title: Faker::Hacker.noun.capitalize + " " + " Get-down", chart: 'chart.txt')
3.times do
  Song.create(title: Faker::Hacker.ingverb.capitalize + " " + Faker::Hacker.adjective.capitalize + " " + Faker::App.version, chart: 'chart.txt')
end
Song.create(title: Faker::Pokemon.name.capitalize + " " + Faker::Hacker.adjective.capitalize + " " + Faker::App.version, chart: 'chart.txt')

##collaborators
20.times do
  Collaborator.create(name: Faker::Name.name, bio: Faker::Hacker.say_something_smart, catchphrase: "Like I alawys say,'#{Faker::Company.bs.capitalize}.'")
end

songs = Song.all 
collaborators = Collaborator.all

# ##roles
songs.each do |song|
	role = Role.create(job: 'producer', song_id: song.id, collaborator_id: collaborators.sample.id)
	role = Role.create(job: 'song writer', song_id: song.id, collaborator_id: collaborators.sample.id)
	role = Role.create(job: 'performer', song_id: song.id, collaborator_id: collaborators.sample.id)
end

