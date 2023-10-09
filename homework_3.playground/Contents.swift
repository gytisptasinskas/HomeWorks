import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let principal = 500000.0
let rate = 0.05
let period = 5
var deposit = principal

for _ in 1...period {
  deposit += deposit * rate
}

let profit = deposit - principal
let formattedProfit = String(format: "%.2f", profit)
let formattedDeposit = String(format: "%.2f", deposit)
print("Amount of income after \(period) years will be \(formattedProfit) Eur. My total deposit will be \(formattedDeposit) Eur!")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let numbers = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
var evenNumbers = [Int]()

for number in numbers {
    if number % 2 == 0 {
        evenNumbers.append(number)
    }
}

print("My even numbers are: \(evenNumbers)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter = 0

while true {
    let randomNumber = Int.random(in: 1...10)
    counter += 1
    if randomNumber == 5 {
        break
    }
}

print("Number 5 will be after \(counter) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let totalHeight = 10
var heightClimbed = 0
var numberOfDays = 0

while heightClimbed < totalHeight {
    numberOfDays += 1
    heightClimbed += 2
    if heightClimbed >= totalHeight {
        break
    }
    heightClimbed -= 1
}

print("Bug will spend \(numberOfDays) days to reach the top of the post")
