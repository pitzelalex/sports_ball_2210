class Team
  attr_reader :name, :home, :roster

  def initialize(name, home)
    @name = name
    @home = home
    @roster = []
  end
end