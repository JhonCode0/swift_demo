class BankAccount {
    // Stored properties
    let accountNumber: String
    let customerName: String
    private(set) var accountBalance: Double
    private(set) var yearlyInterestRate: Double
    private(set) var year: Int
    
    // Property observers
    var description: String {
        return "Account Number: \(accountNumber)\nCustomer Name: \(customerName)\nYearly Interest Rate: \(yearlyInterestRate)%\nAccount Balance: $\(accountBalance)\nYear: \(year)"
    }
    
    // Initializers
    init(accountNumber: String, customerName: String) {
        self.accountNumber = accountNumber
        self.customerName = customerName
        self.accountBalance = 10.0
        self.yearlyInterestRate = 0.1
        self.year = 1
    }
    
    init(accountNumber: String, customerName: String, balance: Double, interestRate: Double, year: Int) {
        self.accountNumber = accountNumber
        self.customerName = customerName
        self.accountBalance = max(balance, 10.0)
        self.yearlyInterestRate = max(0.1, min(interestRate, 2.0))
        self.year = max(1, min(year, 5))
    }
    
    // Functions
    func credit(amount: Double) {
        accountBalance += amount
    }
    
    func debit(amount: Double) {
        if accountBalance - amount >= 10.0 {
            accountBalance -= amount
        } else {
            print("Withdrawal not allowed. Account balance should be greater than or equal to $10.00.")
        }
    }
    
    // Deinitializer
    deinit {
        // Perform any cleanup here
    }
}
