var Bank = require('./bank/bank.js');
var sampleAccounts = require('./sample.json');
var Account = require('./bank/account.js');

window.onload = function(){
  console.log("webpack app started");
  var bank = new Bank();
  for(accountData of sampleAccounts) {
    bank.addAccount(new Account(accountData));
  }
  console.log('Our Bank', bank);
  console.log('total cash', bank.totalCash());

  var totalDisplay = document.getElementById('total');
  totalDisplay.innerText = "Total: £" + bank.totalCash();

  var businessDisplay = document.getElementById('business');
  businessDisplay.innerText = "Total All Business Accounts: £" + bank.totalCash('business');

  var personalDisplay = document.getElementById('personal');
  personalDisplay.innerText = "Total All Personal Accounts: £" + bank.totalCash('personal');
};
