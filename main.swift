let account1 = BankAccount(accountNumber: "12345", customerName: "John Doe")
let account2 = BankAccount(accountNumber: "54321", customerName: "Jane Smith", balance: 1000.0, interestRate: 1.5, year: 3)

print("Account 1:")
print(account1.description)
print("Interest for Account 1: $\(account1.interest)")

print("\nAccount 2:")
print(account2.description)
print("Interest for Account 2: $\(account2.interest)")
