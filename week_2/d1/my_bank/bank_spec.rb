require ('minitest/autorun')
require ('minitest/rg')
require_relative('bank')
require_relative('bank_account')

class TestBank < MiniTest::Test

  def setup
    bank_account1 = BankAccount.new('Francesco', 10000, 'business', '10-20-30')
    bank_account2 = BankAccount.new('Rick', 1000, 'personal', '40-50-60')
    bank_account3 = BankAccount.new('Tony', 100, 'business', '70-80-90')

    bank_accounts = [bank_account1, bank_account2, bank_account3]

    @bank = Bank.new(bank_accounts)
  end

  def test_bank_initial_state
    assert_equal(3, @bank.number_of_accounts)
  end

  def test_bank_total_cash
    assert_equal(11100, @bank.bank_total_cash)
  end

  def test_account_types
    assert_equal(['business', 'personal', 'business'], @bank.genre)
  end

  def test_sort_code
    assert_equal(['10-20-30', '40-50-60', '70-80-90'], @bank.sort_code)
  end

end