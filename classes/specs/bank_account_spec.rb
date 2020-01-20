require('minitest/autorun')
require('minitest/reporters')
require_relative('../bank_account')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test
  def setup
    @account = BankAccount.new("Calum", 10, "business")
    @account2 = BankAccount.new("Nick", 20, "personal")
  end

  def test_account_name
    assert_equal("Calum", @account.holder_name)
  end

  def test_account_balance
    assert_equal(10, @account.balance)
  end

  def test_account_type
    assert_equal("business", @account.type)
  end

def test_set_account_name
  @account.holder_name = "Zsolt"
  assert_equal("Zsolt", @account.holder_name)
end

def test_set_account_balance
  @account.balance = 15
  assert_equal(15, @account.balance)
end

def test_set_account_type
  @account.type = "personal"
  assert_equal("personal", @account.type)
end

def test_pay_into_account
  @account.pay_in(100)
  assert_equal(110, @account.balance)
end

def test_monthly_fee_business
  @account.pay_monthly_fee()
  assert_equal(-40, @account.balance)
end

def test_monthly_fee_personal
  @account2.pay_monthly_fee()
  assert_equal(10, @account.balance)
end

end
