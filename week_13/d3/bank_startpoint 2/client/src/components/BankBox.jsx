var React = require('react');
var Bank = require('../bank/bank.js');
var Account = require('../bank/account.js');
var sampleAccounts = require('../sample.json');
var BankTotal = require('./BankTotal');
var AccountBox = require('./AccountBox');

var BankBox = React.createClass({
  getInitialState:function(){
    return {accounts: sampleAccounts};
  },

  render:function(){
    var bank = new Bank();
    bank.accounts = this.state.accounts;

    var businessAccounts = bank.filteredAccounts("business");
    var personalAccounts = bank.filteredAccounts("personal");

    return (
      <div>
        <BankTotal total={bank.totalCash()}/>
        <AccountBox type = "business" accounts={businessAccounts}/>
        <AccountBox type = "personal" accounts={personalAccounts}/>
      </div>
    )
  }
})

module.exports  = BankBox;
