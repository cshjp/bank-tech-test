# bank-tech-test

## Instructions

1. Clone the repository.
2. Run `bundle install` to install the dependencies.

### Instructions to run the tests

Once bundle install has run, run `rspec` in terminal

### Instruction to run the code

Once bundle install has run follow this guide

1. Run this within your terminal

```
irb -r './lib/account.rb' -r './lib/transaction.rb'
```
2. Run a new account with `account = Account.new`
3. To add a new transaction of type `deposit` run this within irb:
```
account.deposit(Transaction.new(1000))
```
4. To add a new transaction of type `withdraw` run this within irb:
```
account.withdraw(Transaction.new(1000))
```
5. To print the bank statement run this within irb:
```
account.create_statement
account.print_statement
```