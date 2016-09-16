require 'rails_helper'

RSpec.describe Collaborator, type: :model do

	it 'has a default value of false for cynical' do 
		fred = Collaborator.new(name: 'Fred')
		expect(fred.cynical).to eq(false)
	end

	it 'can become cynical' do 
		fred = Collaborator.new(name: 'Fred')
		fred.cynical = true
		jaded_fred = fred.save
		expect(jaded_fred).to eq(true)
	end

	it 'is valid with a name' do 
		fred = Collaborator.new(name: 'Fred')
		expect(fred).to be_valid
	end

	it 'is invalid without a name' do 
		nemo = Collaborator.new(catchphrase: "i am no one")
		expect(nemo).to_not be_valid
	end



end
