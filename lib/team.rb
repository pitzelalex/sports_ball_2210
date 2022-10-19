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
end