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

  it("For numbers greater than 25, program returns number of quarters equal to input / 25 first") do
    expect(50.make_change).to(eq({"pennies" => 0, "nickels" => 0, "dimes" => 0, "quarters" => 2}))
  end

  it("adds on number of dimes equal to (input - (input/25)) / 10 after number of quarters, for numbers not evenly divisible by 25") do
    expect(70.make_change).to(eq({"pennies" => 0, "nickels" => 0, "dimes" => 2, "quarters" => 2}))
  end

  it("if number cannot be evenly made with quarters and dimes, adds on number of nickels needed to make number") do
    expect(80.make_change).to(eq({"pennies" => 0, "nickels" => 1, "dimes" => 0, "quarters" => 3}))
  end

  it("if number cannot be evenly made with quarters, dimes, and nickels, adds on number of pennies needed to make number") do
    expect(53.make_change).to(eq({"pennies" => 3, "nickels" => 0, "dimes" => 0, "quarters" => 2}))
  end
end
