class Team
  attr_reader :name, :home, :roster

  def initialize(name, home)
    @name = name
    @home = home
    @roster = []
  end

  def player_count
    @roster.count
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    @roster.select { |player| player.contract_length > 24}
  end

  def short_term_players
    @roster.select { |player| player.contract_length <= 24}
  end

  def total_value
    @roster.sum { |player| player.total_cost }
  end
end