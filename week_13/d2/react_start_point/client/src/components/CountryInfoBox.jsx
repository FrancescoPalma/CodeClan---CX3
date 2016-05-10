var React = require('react');

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
        <h5>Population:</h5><p>{this.props.country.population}</p>
        <h5>Area:</h5><p>{this.props.country.area}</p>
        <h5>Region:</h5><p>{this.props.country.region}</p>
        <h5>Subregion:</h5><p>{this.props.country.subregion}</p>
        <BorderingCountries borders={this.props.country.borders} />
      </div>
    )
  }
})

var BorderingCountries = React.createClass({
  render: function() {
    return (
      <div>
        <h5>Bordering Countries:</h5><p>{this.props.borders.toLocaleString()}</p>
      </div>
    )
  }
})

module.exports = CountryInfoBox;
