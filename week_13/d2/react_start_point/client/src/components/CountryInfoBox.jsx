var React = require('react');
var CountryBorders = require('./CountryBorders');

var CountryInfoBox = React.createClass({
  render: function() {
    if(!this.props.country) {
      return <p>Select a country</p>
    }
    return (
      <div>
        <h3>Selected Country Info</h3>
        <h5>Name:</h5><p>{this.props.country.name}</p>
        <h5>Capital:</h5><p>{this.props.country.capital}</p>
        <h5>Population:</h5><p>{this.props.country.population.toLocaleString()}</p>
        <CountryBorders borders={this.props.borderingCountries} />
      </div>
    )
  }
})

module.exports = CountryInfoBox;
