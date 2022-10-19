require 'rspec'
require './lib/player.rb'
require './lib/team.rb'

describe Team do
  describe '#initialize' do 
    before(:each) do
      @team = Team.new("Dodgers", "Los Angeles")
    end

    it 'it exists' do
      expect(@team).to be_a Team
    end

    it 'has a name' do
      expect(@team.name).to eq("Dodgers")
    end
  end

end