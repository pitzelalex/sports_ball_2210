class Player
  attr_reader :first_name, :last_name, :cost, :length

  def initialize(name,cost,length)
    @first_name = name.split.first
    @last_name = name.split.last
    @cost = cost
    @length = length
  end
end