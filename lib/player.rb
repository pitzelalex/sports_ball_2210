class Player
  attr_reader :first_name, :last_name, :monthly_cost, :contract_length, :total_cost, :nickname

  def initialize(name,cost,length)
    @first_name = name.split.first
    @last_name = name.split.last
    @monthly_cost = cost
    @contract_length = length
    @total_cost = cost * length
    @nickname = nil
  end
end