# frozen_string_literal: true

require 'date'

class Transaction
  def initialize(amount)
    raise 'Amount must be an integer' unless amount.is_a?(Integer)

    @amount = amount
    @date = Date.today
  end

  attr_reader :amount, :date
end
