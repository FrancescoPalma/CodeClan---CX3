class BankAccount

  # Instead of repeating the Getters, you use this line of code to attribute
  # to the method 'attr_reader' the initialize function parameters as symbols
  # which are just the names of the methods we want to get.
  # > attr_reader(:holder_name, :balance, :genre)

  # with the method 'attr_accessor' you need to change the code in spec, for in # lines 26, 31, 36 you need the '=' and not the '()' and in the same lines
  # you need to change from '@account.set_balance('')' to '@account.balance ='
  attr_accessor(:holder_name, :genre, :balance)
  attr_reader(:sort_code)

# Default initializing function
  def initialize(holder_name, balance, genre, sort_code) 
    @holder_name = holder_name
    @balance = balance
    @genre = genre
    @sort_code = sort_code
  end

# Getter Methods
  def holder_name
    @holder_name
  end

  def balance
    @balance
  end

  def genre
    @genre
  end

  def sort_code
    @sort_code
  end

# Setter Methods
  def set_holder_name(updated_name)
    @holder_name = updated_name
  end

  def set_balance(updated_balance)
    @balance = updated_balance
  end

  def set_genre(updated_genre)
    @genre = updated_genre
  end

  end