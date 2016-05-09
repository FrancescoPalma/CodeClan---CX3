var React = require('React');

var Counter = React.createClass({
  getInitialState: function() {
    return {count: 0}
  },

  incrementCount: function() {
    console.log('increment!!!');
    this.setState({count: this.state.count + 1})
  },

  decrementCount: function() {
    console.log('decrement!!!');
    this.setState({count: this.state.count - 1})
  },

  incrementByMultiple: function() {
    console.log('increment by multiple!!!');
    this.setState({count: this.state.count + this.props.multiple})
  },

  decrementByMultiple: function() {
    console.log('decrement by multiple!!!');
    this.setState({count: this.state.count - this.props.multiple})
  },

  render: function() {
    return (
      <div>
        <h1>{this.props.title}</h1>
        <p>The current count is {this.state.count}</p>
        <button onClick={this.incrementCount}>Increment</button>
        <button onClick={this.decrementCount}>Decrement</button>
        <button onClick={this.incrementByMultiple}>Increment by 2</button>
        <button onClick={this.decrementByMultiple}>Decrement by 2</button>
      </div>
    )
  }
});

module.exports = Counter;
