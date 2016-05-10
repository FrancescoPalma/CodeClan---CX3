var React = require('react');

var CountrySelect = React.createClass({
  getInitialState: function() {
    return {selectedIndex: null};
  },

  handleChange: function(e) {
    e.preventDefault();
    var newIndex = e.target.value;
    this.setState({selectedIndex: newIndex});
    this.props.onSelectCountry(this.props.countries[newIndex]);
  },

  render: function() {
    var options = this.props.countries.map(function(country, index) {
      return <option key={index} value={index}>{country.name}</option>;
    });

    return (
      <div>
        <select value={this.state.selectedIndex} onChange={this.handleChange}>
          {options}  
        </select>
      </div>
    )
  }
})

module.exports = CountrySelect;
