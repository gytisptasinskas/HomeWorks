import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

var floatOne: Float = 3.14
var floatTwo: Float = 42.0

let doubleSum = Double(floatOne + floatTwo)

print(doubleSum)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne: Int = 10
var numberTwo: Int = 3

let result: Int = numberOne / numberTwo
let remainder: Int = numberOne % numberTwo

print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder).")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var qty = 8
var price = 1000

var totalSum = qty * price

if qty >= 10 {
    price = 850
} else if qty >= 5 {
    price = 900
}

totalSum = qty * price

print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge = "33a"

if let age = Int(userInputAge) {
    print("Converted age: \(age)")
} else {
    print("Cannot convert \(userInputAge) to an Integer.")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

let birthdate = DateComponents(calendar: .current, year: 1997, month: 11, day: 23).date!

let calendar = Calendar.current
let currentDate = Date()

let components = calendar.dateComponents([.year, .month, .day], from: birthdate, to: currentDate)

let totalYearsFromBirth = components.year ?? 0
let totalMonthFromBirth = totalYearsFromBirth * 12 + (components.month ?? 0)
let totalDaysFromBirth = calendar.dateComponents([.day], from: birthdate, to: currentDate).day ?? 0

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

let monthOfBirth = 11

switch monthOfBirth {
case 1...3:
    print("I was born in the first quarter.")
case 4...6:
    print("I was born in the second quarter.")
case 7...9:
    print("I was born in the third quarter.")
case 10...12:
    print("I was born in the fourth quarter.")
default:
    print("Invalid month")
}
