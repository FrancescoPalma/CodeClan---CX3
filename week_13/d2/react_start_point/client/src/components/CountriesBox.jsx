var React = require('react');
var CountrySelect = require('./CountrySelect');
var CountryInfoBox = require('./CountryInfoBox');

var CountriesBox = React.createClass({
  getInitialState: function() {
    return {countries: [], selectedCountry: null}
  },

  setSelectedCountry: function(country) {
    this.setState({selectedCountry: country});
  },

  componentDidMount: function() {
    var request = new XMLHttpRequest();
    request.open("GET", "https://restcountries.eu/rest/v1/all");
    request.onload = function() {
      var data = JSON.parse(request.responseText);
      this.setState({countries: data});
    }.bind(this);
    request.send();
  },

  render: function() {
    return (
      <div>
        <h1>Countries</h1>
        <CountrySelect countries={this.state.countries} onSelectCountry={this.setSelectedCountry}/>
        <CountryInfoBox country={this.state.selectedCountry}/>
      </div>
    ) 
  }
})

module.exports = CountriesBox;
