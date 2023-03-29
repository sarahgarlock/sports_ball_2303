require './lib/player'
require './lib/team'

RSpec.describe Team do
  describe 'Iteration 2'do
    it 'exists' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team).to be_a Team
    end

    it 'has an emptry array roster' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.roster).to eq ([])
    end

    it 'has no player count' do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team.player_count).to eq 0
    end

    it 'can add players to a roster' do
      team = Team.new("Dodgers", "Los Angeles")

      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)

      team.add_player(player_1)
      team.add_player(player_2)

      expect(team.roster).to eq([player_1, player_2])
      expect(team.player_count).to eq 2
    end

    it 'has a contract greater than two years' do
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

    xit 'has a contract shorter or equal to two years' do
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

    xit 'has a total team value' do
      team = Team.new("Dodgers", "Los Angeles")

      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      
      expect(team.total_value).to eq 85200000
    end
  end
end