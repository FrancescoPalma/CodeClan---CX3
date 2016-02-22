require ('minitest/autorun')
require ('minitest/rg')
require_relative('bank_account')

class TestBankAccount < Minitest::Test  
  
  # Default Setup Function to avoid repetition of the settings
  def setup
    @account = BankAccount.new('Jay', 500, 'business', '10-20-30')
  end

  # Tests for Getters
  def test_account_name
    assert_equal('Jay', @account.holder_name)
  end

  def test_account_value
    assert_equal(500, @account.balance)
  end

  def test_account_type
    assert_equal('business', @account.genre)
  end

  def test_sort_code
    assert_equal('10-20-30', @account.sort_code)
  end

  # Tests for Setters
  def test_set_account_name
    @account.holder_name = 'Francesco' 
    assert_equal("Francesco", @account.holder_name)
  end

  def test_set_account_balance
    @account.balance = 1000000
    assert_equal(1000000, @account.balance)
  end

  def test_set_account_genre
    @account.genre = 'business'
    assert_equal('business', @account.genre)
  end

end