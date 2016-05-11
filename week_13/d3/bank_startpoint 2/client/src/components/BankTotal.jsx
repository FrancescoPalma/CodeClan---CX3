var React = require ('react');

var BankTotal = React.createClass({
  render: function(){
    return (
      <div>
        <h1>Running Total: £{this.props.total}</h1>
      </div>
    )
  }
})

module.exports = BankTotal;
