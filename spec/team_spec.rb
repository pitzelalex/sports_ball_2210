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

    it 'has a home' do
      expect(@team.home).to eq("Los Angeles")
    end

    it 'has a roster' do
      expect(@team.roster).to eq([])
    end
  end

  describe '#player_count' do
    it 'counts the number of players on team' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.player_count).to eq[0]
    end
  end
end