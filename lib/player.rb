require 'pry'
class Player
  attr_reader :name
  def initialize(name, monthly_cost, contract_length)
    @name = name
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