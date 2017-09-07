require 'rspec'
require 'coin_combinations'

describe("#make_change") do
  it("returns an error for negative numbers") do
    expect(-5.make_change).to(eq("Error"))
  end

  it("returns 0 coins if number is 0") do
    expect(0.make_change).to(eq({"coins" => 0}))
  end
end
