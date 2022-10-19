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

  def details
    {"total_value" => total_value,
    "player_count" => player_count}
  end

  def average_cost_of_player
    total = total_value / @roster.count
    "$#{total.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}"
    #(\d{3}) check every 3 characters
    #(?=\d) ensures that the following characters are 3+. Stops if there isn't another complete set of 3 characters
    #, '\\1,' \\1 is pattern group. this subs in the original pattern group with a comma appended
    # further research required
  end
end