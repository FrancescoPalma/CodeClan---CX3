var React = require('react');
var _ = require('lodash');
var CountrySelect = require('./CountrySelect');
var CountryInfoBox = require('./CountryInfoBox');
var RegionSelect = require('./RegionSelect');

var CountriesBox = React.createClass({
  getInitialState: function() {
    return {countries: [], selectedCountry: null, selectedRegion: null}
  },

  setSelectedCountry: function(country) {
    this.setState({selectedCountry: country});
  },

  setSelectedRegion: function(region) {
    this.setState({selectedRegion: region});
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

  getCountryByCode: function(code) {
    return _.find(this.state.countries, function(country) {
      return country.alpha3Code === code
    })
  },

  newBorderingCountriesFormat: function() {
    if(!this.state.selectedCountry){return [];}
    var borderingCountries = this.state.selectedCountry.borders.map(function(code) {
      return this.getCountryByCode(code);
    }.bind(this))
    return borderingCountries;
  },

  getRegions: function() {
    var regions = this.state.countries.map(function(country) {
      return country.region;
    })
    return _.uniq(regions);
  },

  filteredCountries: function() {
    if(!this.state.selectedRegion){return this.state.countries};
    var filteredCountries = this.state.countries.filter(function(country) {
      return country.region === this.state.selectedRegion;
    }.bind(this))
    return filteredCountries;
  },

  render: function() {
    // this.state.selectedCountry.borderingCountries = this.newBorderingCountriesFormat();
    var borderingCountries = this.newBorderingCountriesFormat();
    return (
      <div>
        <h1>Countries</h1>
        <CountrySelect countries={this.filteredCountries()} onSelectCountry={this.setSelectedCountry}/>
        <CountryInfoBox country={this.state.selectedCountry} borderingCountries={borderingCountries}/>
        <RegionSelect regions={this.getRegions()} onSelectRegion={this.setSelectedRegion} />
      </div>
    ) 
  }
})

module.exports = CountriesBox;
