require 'pry'
class Player
  attr_reader :name, 
              :monthly_cost, 
              :contract_length, 
              :nickname

  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nil
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

  def total_cost
    monthly_cost * contract_length
  end

  def set_nickname!(nickname)
    @nickname = nickname
  end

end