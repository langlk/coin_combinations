class Integer
  def make_change
    if self < 0
      return "Error"
    elsif self == 0
      return {"pennies" => 0, "nickels" => 0, "dimes" => 0, "quarters" => 0}
    else
      coin_values = {1 => "pennies", 5 => "nickels", 10 => "dimes", 25 => "quarters"}
      change = {"pennies" => 0, "nickels" => 0, "dimes" => 0, "quarters" => 0}
      values_array = coin_values.keys.sort.reverse
      total = self
      values_array.each do |value|
        if total >= value
          change.store(coin_values.fetch(value), total/value)
          total -= (total/value) * value
        end
      end
      return change
    end
  end
end
