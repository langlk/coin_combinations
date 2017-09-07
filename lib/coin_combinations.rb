class Integer
  def make_change
    if self < 0
      return "Error"
    elsif self == 0
      return {"coins" => 0}
    end
  end
end
