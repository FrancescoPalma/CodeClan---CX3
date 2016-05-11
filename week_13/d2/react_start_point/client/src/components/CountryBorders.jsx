var React = require('react');

var CountryBorders = React.createClass({
  render: function() {
    var countryListBorders = this.props.borders.map(function(border) {
      return <li key={border.alpha3Code}>{border.name}</li>
    })
    return (
      <div>
        <h5>Bordering Countries:</h5>
        <ul>
          {countryListBorders}
        </ul>
      </div>
    )
  }
})

module.exports = CountryBorders;
