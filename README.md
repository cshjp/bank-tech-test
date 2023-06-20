# bank-tech-test

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or Node.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## Instructions

1. Clone the repository.
2. Run `bundle install` to install the dependencies.

### Instructions to run the tests

Once bundle install has run, run `rspec` in terminal

### Instruction to run the code

Once bundle install has run follow this guide

1. Run `irb` in terminal
2. Make sure you require the two files with, 

```
require './lib/bank_account'
require './lib/transaction'
```

3. Run a new account with `account = Account.new`
4. To add a new transaction of type `deposit` run this within irb `account.deposit(Transaction.new(1000))`
4. To add a new transaction of type `withdraw` run this within irb `account.withdraw(Transaction.new(1000))`
5. To print the bank statement run this within irb `account.create_statement` followed by `account.print_statement`