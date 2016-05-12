var React = require('react');

var AccountList = React.createClass({
  render:function(){
    var accountListItems = this.props.accounts.map(function(account) {
      return ( 
        <div>
          <li key={account.owner}>
            {account.owner}: {account.amount.toLocaleString()}
          </li>
        </div>
      )
    }.bind(this);

    return (
      <div>
        <ul>
          {accountListItems}
        </ul>
      </div>  
    )
  }  
})

module.exports = AccountList;
