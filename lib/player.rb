require 'pry'
class Player
  attr_reader :name, :monthly_cost
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
  end

  def first_name
    if name.split.count > 1
      name.split.first
    else
      name
    end
  end

  def last_name
    if name.split.count > 1
      name.split.last
    end


  end

  

end