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

      expect(team.player_count).to eq(0)
    end
  end

  describe '#add_player' do
    it 'adds a player to the roster' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      team.add_player(player_1)
      team.add_player(player_2)

      expect(team.roster).to eq([player_1, player_2])
    end
  end

  describe '#long_term_players' do
    it 'returns array of all long term players' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.long_term_players).to eq([player_1, player_3])
    end
  end

  describe '#short_term_players' do
    it 'returns array of all short term players' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.short_term_players).to eq([player_2, player_4])
    end
  end
end