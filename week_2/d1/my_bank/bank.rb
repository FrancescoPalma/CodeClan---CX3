class Bank

  def initialize(accounts)
    @accounts = accounts
  end

  # This is just a method not a Getter for it doesn't return anything.
  def number_of_accounts
    @accounts.length
  end

  def bank_total_cash
    counter = 0
    for x in @accounts
      counter += x.balance
    end
    return counter
  end

  def account_types
    type_holder = []
    for account in @accounts
      type_holder.push(account.genre)
    end
    return type_holder
  end

  def sort_code
    code_holder = []
    for account in @accounts
      code_holder.push(account.sort_code)
    end
    return code_holder
  end

end