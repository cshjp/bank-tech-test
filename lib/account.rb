class Account
  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def set_balance(amount)
    @balance = amount
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end