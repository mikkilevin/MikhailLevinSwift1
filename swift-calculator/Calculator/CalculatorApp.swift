class CalculatorApp {
    let inputHelper = CalculatorInputDataHelper()
    let calculator = Calculator()

    func run() {
        guard let calculatorInput = inputHelper.requestInput() else {
            print("Invalid input.")
            return
        }
        
        calculator.calculate(
            firstNumber: calculatorInput.firstNumber,
            secondNumber: calculatorInput.secondNumber,
            operation: calculatorInput.operation
        )
        if let result = calculator.result {
            print("Ruslt of calculations:")
            print(result)
        } else {
            print("Calculate was completed wit error.")
        }
    }
}
