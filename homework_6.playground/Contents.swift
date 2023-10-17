import UIKit

/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */

enum CalculationType: String {
    case addition = "add"
    case subtraction = "subtract"
    case multiplication = "multiply"
    case division = "divide"
}

func calculateResult(
    firstNumber numberOne: Int,
    andSecondNumber numberTwo: Int,
    withCalculationType calculationType: CalculationType
) -> Int {
    var result = numberOne

    switch calculationType {
    case .addition:
        result += numberTwo
    case .subtraction:
        result -= numberTwo
    case .multiplication:
        result *= numberTwo
    case .division:
        guard numberTwo != 0 else {
            print("Error: Division by zero!")
            return 0
        }
        result /= numberTwo
    }
    
    print("Result: \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
}

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

let number1 = 10
let number2 = 5

calculateResult(firstNumber: number1, andSecondNumber: number2, withCalculationType: .addition)
calculateResult(firstNumber: number1, andSecondNumber: number2, withCalculationType: .subtraction)
calculateResult(firstNumber: number1, andSecondNumber: number2, withCalculationType: .multiplication)
calculateResult(firstNumber: number1, andSecondNumber: number2, withCalculationType: .division)

/*
Exercise 2

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

 Create func getSpecs() print it with elements provided above
 */

struct Car {
    let name: String
    let productionYear: Int
    let horsePower: Int

    func getSpecs() {
        print("Name: \(name), Production Year: \(productionYear), Horse Power: \(horsePower)")
    }
}

let myCar = Car(name: "Toyota", productionYear: 2020, horsePower: 150)
myCar.getSpecs()
