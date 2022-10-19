require 'rspec'
require './lib/player.rb'
require './lib/team.rb'

describe Team do
  describe '#initialize' do 
    it 'is exists' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team).to be_a Team
    end
  end
end