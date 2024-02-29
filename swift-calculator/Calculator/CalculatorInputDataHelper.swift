class CalculatorInputDataHelper {
    func requestInput() -> CalculatorInput? {
        print("Super usefull calculator")
        guard
            let firstNumber = requestInputFirstNumber(),
            let operation = requestInputOpertaion(),
            let secondNumber = requestInputSecondNumber()
        else { return nil }
        
        return CalculatorInput(operation: operation, firstNumber: firstNumber, secondNumber: secondNumber)
    }

    func requestInputOpertaion() -> CalculatorOpertaion? {
        print("Input operation: ")
        guard 
            let opertaionString = readLine(),
            let calculatorOpertaion = CalculatorOpertaion(rawValue: opertaionString)
        else {
            print("Invalid operation for calculator. You should input one of operations: +, -, *, /, #.")
            return nil
        }
        return calculatorOpertaion
    }

    func requestInputFirstNumber() -> Double? {
        print("Input first number: ")
        guard let firstNumberString = readLine(), let firstNumber = Double(firstNumberString) else {
            print("Invalid input for first number. You should input number. For example 1, -4, 0, 10.5 etc")
            return nil
        }
        return firstNumber
    }

    func requestInputSecondNumber() -> Double? {
        print("Input second number: ")
        guard let secondNumberString = readLine(), let secondNumber = Double(secondNumberString) else {
            print("Invalid input for second number. You should input number. For example 1, -4, 0, 10.5 etc")
            return nil
        }
        return secondNumber
    }
}
