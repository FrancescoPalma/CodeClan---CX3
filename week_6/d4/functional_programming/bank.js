var Bank = function() {
  this.accounts = [100,200,300,400];
  this.total = 0;
}

Bank.prototype = {
  setTotal: function() {
    this.total = 0;
      // console.log('this outside foreach', this);
    this.accounts.forEach(function(account) {
      // console.log('this outside foreach', this);
      this.total += account;
    }.bind(this)); // whatever will be put inside .bind, it will be set inside the function
                   // in this case the result is 1000
  }
}

var b = new Bank();

b.setTotal();

console.log('total is ', b.total);