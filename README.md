# Coin Combinations

#### _Epicodus practice in Ruby, 9/7/17_

#### By _**Kelsey Langlois and and Luciano Oliveira**_

## Description

_Ruby practice: determines smallest number of coins needed to make a number._

## Setup/Installation Requirements

* _Clone this repository._

## Specifications

* Program returns an error for negative numbers.
  * Example Input: -5
  * Example Output: "Error"
* Program returns 0 coins if number is 0.
  * Example Input: 0
  * Example Output: 0 coins
* Program returns 1 penny if number is 1.
  * Example Input: 1
  * Example Output: 1 penny
* Program returns 1 nickel if number is 5.
  * Example Input: 5
  * Example Output: 1 nickel
* Program returns 1 dime if number is 10.
  * Example Input: 10
  * Example Output: 1 dime
* Program returns 1 quarter if number is 25.
  * Example Input: 25
  * Example Output: 1 quarter
* For numbers greater than 25, program returns number of quarters equal to input / 25 first.
  * Example Input: 75
  * Example Output: 3 quarters
* For numbers not evenly divisible by 25, program adds on number of dimes equal to (input - (input/25)) / 10 after number of quarters.
  * Example Input: 70
  * Example Output: 2 quarters 2 dimes
* If number cannot be evenly made with quarters and dimes, program adds on number of nickels needed to make number.
  * Example Input: 80
  * Example Output: 3 quarters 1 nickel
* If program cannot be evenly made with quarters, dimes, and nickels, program adds on number of pennies needed to make number.
  * Example Input: 53
  * Example Output: 2 quarters 3 pennies
  
## Support and contact details

_If you run into any issues or have questions, ideas or concerns, or if you would like to contribute to the code, please contact Kelsey Langlois._

## Technologies Used

_This application was created using Ruby_

### License

Copyright (c) 2017 **_Kelsey Langlois and Luciano Oliveira_**
