require_relative( './models/jedi.rb' )
require_relative( './models/lightsaber.rb' )

require( 'pry-byebug' )

lightsabers = Lightsaber.all.first.jedi
binding.pry
nil
