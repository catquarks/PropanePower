require 'faker'

##songs
Song.create(title: "The" + " " + Faker::Hacker.noun.capitalize + " " + "Boogie")
Song.create(title: Faker::Hacker.noun.capitalize + " " + "Shuffle")
Song.create(title: Faker::Hacker.noun.capitalize + " " + "Foxtrot")
Song.create(title: Faker::Hacker.ingverb.capitalize + " " + Faker::Hacker.adjective.capitalize + " " + Faker::Hacker.noun)
Song.create(title: Faker::Hacker.ingverb.capitalize + " " + Faker::Hacker.adjective.capitalize + " " + Faker::Hipster.word)
Song.create(title: Faker::Hacker.ingverb.capitalize + " " + Faker::Hacker.adjective.capitalize + " " + Faker::Hacker.noun.capitalize + " " + " Oh yeah!")
3.times do
  Song.create(title: "Lets all do the" + " " + Faker::color.color_name.capitalize + " " + Faker::Hacker.noun.capitalize)
end
3.times do
  Song.create(title: "Don't eat the" + " " + Faker::color.color_name.capitalize + " " + Faker::commerce.product_name)
end
Song.create(title: Faker::Hacker.noun.capitalize + " " + " Prominade")
Song.create(title: Faker::Hacker.noun.capitalize + " " + " Get-down")
3.times do
  Song.create(title: Faker::Hacker.ingverb.capitalize + " " + Faker::Hacker.adjective.capitalize + " " + Faker::Hacker.version)
end
Song.create(title: Faker::Pokemon.name.capitalize + " " + Faker::Hacker.adjective.capitalize + " " + Faker::Hacker.version)





##collaborators
20.times do
  Collaborator.create(name: Faker::Name.name, bio: Faker::Hacker.say_something_smart, catchphrase: "Like I alawys say,'#{Faker::Company.bs.capitalize}.'")
end


##roles
