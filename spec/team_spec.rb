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
  end
end