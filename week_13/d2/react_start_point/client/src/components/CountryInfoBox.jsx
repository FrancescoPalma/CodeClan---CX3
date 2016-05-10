var React = require('react');

var CountryInfoBox = React.createClass({
  render: function() {
    if(!this.props.country) {
      return <p>Select a country</p>
    }
    return (
      <div>
        <h3>Selected Country Info</h3>
        <h5>Name: </h5><p>{this.props.country.name}</p>
        <h5>Population: </h5><p>{this.props.country.population}</p>
      </div>
    )
  }
})

module.exports = CountryInfoBox;
