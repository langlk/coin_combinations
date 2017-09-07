require 'rspec'
require 'coin_combinations'

describe("#make_change") do
  it("returns an error for negative numbers") do
    expect(-5.make_change).to(eq("Error"))
  end

  it("returns 0 coins if number is 0") do
    expect(0.make_change).to(eq({"pennies" => 0, "nickels" => 0, "dimes" => 0, "quarters" => 0}))
  end

  it("returns 1 penny if number is 1") do
    expect(1.make_change).to(eq({"pennies" => 1, "nickels" => 0, "dimes" => 0, "quarters" => 0}))
  end

  it("returns 1 nickel if number is 5") do
    expect(5.make_change).to(eq({"pennies" => 0, "nickels" => 1, "dimes" => 0, "quarters" => 0}))
  end

  it("returns 1 dime if number is 10") do
    expect(10.make_change).to(eq({"pennies" => 0, "nickels" => 0, "dimes" => 1, "quarters" => 0}))
  end

  it("returns 1 quarter if number is 25") do
    expect(25.make_change).to(eq({"pennies" => 0, "nickels" => 0, "dimes" => 0, "quarters" => 1}))
  end
end
