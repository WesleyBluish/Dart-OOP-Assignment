# Dart-OOP-Assignment
My week 3 submission
# Object-Oriented Programming (OOP) Assignment in Dart

This project demonstrates the four main concepts of Object-Oriented Programming using Dart: Encapsulation, Inheritance, Polymorphism, and Abstraction. The example is based on a simple banking system.

## Project Structure

The project consists of a single Dart file (`main.dart`) that contains the following classes:

1. `BankAccount`: Base class demonstrating encapsulation
2. `SavingsAccount`: Subclass of `BankAccount`, demonstrating inheritance and polymorphism
3. `CheckingAccount`: Subclass of `BankAccount`, demonstrating inheritance and polymorphism
4. `TransactionProcessor`: Abstract class demonstrating abstraction
5. `DepositProcessor`: Concrete implementation of `TransactionProcessor`
6. `WithdrawalProcessor`: Concrete implementation of `TransactionProcessor`

## OOP Concepts Demonstrated

### 1. Encapsulation

Encapsulation is demonstrated in the `BankAccount` class:
- Private variables `_accountNumber` and `_balance` are used to hide sensitive data.
- Public methods `deposit` and `withdraw` provide controlled access to modify the balance.
- Getter methods are used to access the account number and balance.

### 2. Inheritance

Inheritance is shown through the `SavingsAccount` and `CheckingAccount` classes:
- Both classes extend the `BankAccount` class.
- They inherit properties and methods from the parent class and add their own specific features.

### 3. Polymorphism

Polymorphism is demonstrated through method overriding:
- Both `SavingsAccount` and `CheckingAccount` override the `withdraw` method.
- Each subclass implements the `withdraw` method differently based on its specific rules.

### 4. Abstraction

Abstraction is shown through the `TransactionProcessor` abstract class:
- It defines an abstract method `processTransaction`.
- `DepositProcessor` and `WithdrawalProcessor` provide concrete implementations of this abstract method.

## How to Run

1. Ensure you have Dart SDK installed on your system.
2. Save the code in a file named `main.dart`.
3. Open a terminal and navigate to the directory containing `main.dart`.
4. Run the following command:

   ```
   dart main.dart
   ```

5. The program will execute, demonstrating the use of various classes and OOP concepts.

## Output

The program will output the results of various transactions, including deposits, withdrawals, and interest calculations for the savings account.

## Conclusion

This project demonstrates a practical application of OOP concepts in Dart, using a simple banking system as an example. It showcases how encapsulation, inheritance, polymorphism, and abstraction can be used to create a well-structured and maintainable codebase.
