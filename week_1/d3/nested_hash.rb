countries = {
  
  uk: {
    capital: 'London',
    population: 60
  },

  germany: {
    capital: 'Berlin',
    population: 55,
    currencies: ['euro', 'gbp']
  }

}

puts countries[:germany][:currencies][1]
