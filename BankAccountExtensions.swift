extension BankAccount {
    // Computed property for interest
    var interest: Double {
        return (accountBalance * yearlyInterestRate * Double(year)) / 100.0
    }
    
    // Convenience initializer for account number and customer name
    convenience init(accountNumber: String, customerName: String, interestRate: Double, balance: Double) {
        self.init(accountNumber: accountNumber, customerName: customerName, balance: balance, interestRate: interestRate, year: 1)
    }
    
    // Convenience initializer for account number and customer name
    convenience init(accountNumber: String, customerName: String) {
        self.init(accountNumber: accountNumber, customerName: customerName, balance: 10.0, interestRate: 0.1, year: 1)
    }
}
