require 'rails_helper'

RSpec.describe Role, type: :model do
  it 'is valid with job' do
    fred = Collaborator.create(name: "Fred")
    song = Song.create(title: "Ballad of the Propane", chart: "ballad_of_the_propane.txt")
    role = Role.new(job: "producer", collaborator_id: fred.id, song_id: song.id)
    expect(role).to be_valid
  end

  it 'is invalid without a job' do
    fred = Collaborator.create(name: "Fred")
    song = Song.create(title: "Ballad of the Propane", chart: "ballad_of_the_propane.txt")
    role = Role.new(collaborator_id: fred.id, song_id: song.id)
    expect(role).to_not be_valid
  end



end
