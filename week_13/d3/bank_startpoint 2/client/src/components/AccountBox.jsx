var React = require('react');
var AccountList = require('./AccountList');

var AccountBox = React.createClass({
  render:function(){
    return (
      <div>
        <h4>{this.props.type}</h4>
        <AccountList accounts={this.props.accounts}/>
      </div>
    )
  }  
})

module.exports = AccountBox;
