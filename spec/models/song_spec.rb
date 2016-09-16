require 'rails_helper'

RSpec.describe Song, type: :model do 

	it 'is valid with title' do 
		song = Song.create(title: "Moose song", chart: 'moose_song.txt')
		expect(song).to be_valid
	end

	it 'is valid with a chart' do 
		song = Song.create(title: "Moose song", chart: 'moose_song.txt')
		expect(song).to be_valid
	end

	it 'is invalid without a title' do 
		song = Song.create(title: nil, chart: 'moose_song.txt')
		expect(song).to_not be_valid
	end

	it 'is invalid without a chart' do 
		song = Song.create(title: 'Earth Cup', chart: nil)
		expect(song).to_not be_valid
	end

end
