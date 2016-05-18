class AccountsController < ApplicationController
  def index
    authenticate_user!
    # accounts = current_user.accounts
    accounts = [
      {:name => 'local', :amount => 10.00},
      {:name => 'offshore', :amount => 1000000.00}
    ]
    render json: accounts 
  end
end
