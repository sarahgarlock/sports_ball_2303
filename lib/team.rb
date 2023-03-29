class Team
  attr_reader :roster, :player_count
  def initialize(team, city)
    @roster = []
    @player_count = 0
    @long_term_players = []
    @short_term_players = []
  end

  def add_player(player)
    @roster << player
    @player_count += 1
  end

  def long_term_players
    roster.select do
      binding.pry
     contract_length > 24
    end
  end

  def short_term_players
    roster.select do
      player.contract_length <= 24
    end
  end

end