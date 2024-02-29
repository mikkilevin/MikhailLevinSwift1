import Foundation

class Calculator {
    var result: Double? = 0

    func calculate(firstNumber: Double, secondNumber: Double, operation: CalculatorOpertaion) {
        switch operation {
        case .plus:
            result = firstNumber + secondNumber
        case .minus:
            result = firstNumber - secondNumber
        case .multiplier:
            result = firstNumber * secondNumber
        case .devider:
            if secondNumber == 0 {
                result = nil
                print("Divide by 0 is not supported")
            } else {
                result = firstNumber / secondNumber
            }
        case .radical:
            if firstNumber < 0 {
                result = nil
                print("First number must be >= 0 for sqrt operation (Math rule).")
            } else if secondNumber < 1 {
                result = nil
                print("Second number must be >= 1 for sqrt operation (Math rule).")
            } else {
                result = pow(firstNumber, (1 / secondNumber))
            }
        }
    }
}
