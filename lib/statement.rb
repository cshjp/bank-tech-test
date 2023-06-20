class Statement
  def initialize(io)
    @line_1 = "date || credit || debit || balance"
    @io = io
  end

  def first
    @io.puts @line_1
  end
end
