// Encapsulation
class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  String get accountNumber => _accountNumber;
  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  bool withdraw(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
      return true;
    }
    return false;
  }
}

// Inheritance and Polymorphism
class SavingsAccount extends BankAccount {
  double _interestRate;

  SavingsAccount(String accountNumber, double balance, this._interestRate)
      : super(accountNumber, balance);

  void addInterest() {
    double interest = balance * _interestRate;
    deposit(interest);
  }

  @override
  bool withdraw(double amount) {
    if (balance - amount >= 100) {
      return super.withdraw(amount);
    }
    return false;
  }
}

class CheckingAccount extends BankAccount {
  double _overdraftLimit;

  CheckingAccount(String accountNumber, double balance, this._overdraftLimit)
      : super(accountNumber, balance);

  @override
  bool withdraw(double amount) {
    if (balance + _overdraftLimit >= amount) {
      _balance -= amount;
      return true;
    }
    return false;
  }
}

// Abstraction
abstract class TransactionProcessor {
  void processTransaction(BankAccount account, double amount);
}

class DepositProcessor extends TransactionProcessor {
  @override
  void processTransaction(BankAccount account, double amount) {
    account.deposit(amount);
    print('Deposited $amount to ${account.accountNumber}');
  }
}

class WithdrawalProcessor extends TransactionProcessor {
  @override
  void processTransaction(BankAccount account, double amount) {
    if (account.withdraw(amount)) {
      print('Withdrawn $amount from ${account.accountNumber}');
    } else {
      print('Withdrawal failed for ${account.accountNumber}');
    }
  }
}

void main() {
  var savingsAccount = SavingsAccount('SA001', 1000, 0.05);
  var checkingAccount = CheckingAccount('CA001', 500, 200);

  var depositProcessor = DepositProcessor();
  var withdrawalProcessor = WithdrawalProcessor();

  depositProcessor.processTransaction(savingsAccount, 200);
  withdrawalProcessor.processTransaction(checkingAccount, 600);

  savingsAccount.addInterest();
  print('Savings account balance: ${savingsAccount.balance}');
  print('Checking account balance: ${checkingAccount.balance}');
}
