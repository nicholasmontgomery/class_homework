class BankAccount
  attr_accessor :holder_name, :balance, :type

  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

  def pay_in(amount)
    @balance += amount
  end

  def pay_monthly_fee()
    if @type == "business"
    @balance -= 50
      elsif @type == "personal"
      @balance -= 10
      end
    end
  end
