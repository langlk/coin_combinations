class Integer
  def make_change
    if self < 0
      return "Error"
    elsif self == 0
      return {"pennies" => 0, "nickels" => 0, "dimes" => 0, "quarters" => 0}
    else
      coin_values = {1 => "pennies", 5 => "nickels", 10 => "dimes", 25 => "quarters"}
      change = {"pennies" => 0, "nickels" => 0, "dimes" => 0, "quarters" => 0}
      change.store(coin_values.fetch(self), 1)
      return change
    end
  end
end
