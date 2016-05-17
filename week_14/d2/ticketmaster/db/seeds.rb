# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all()
Album.delete_all()
Gig.delete_all()
Venue.delete_all()

artist_one = Artist.create!( {name: "Oasis"} )
artist_two = Artist.create!( {name: "Justin Bieber"})

artist_one.albums.create!({name:"Be Here Now"})
artist_one.albums.create!({name:"Definitely Maybe"})

venue_one = Venue.create!( { name: 'Corn Exchange', location:'Edinburgh' } )
venue_two = Venue.create!( { name: "O2", location:'London'} )

Gig.create!( {
  artist_id: artist_one.id, 
  venue_id: venue_one.id,
  price: 30,
  date: DateTime.new(2016, 11, 1)
})
