require 'sinatra'
require 'sinatra/contrib/all' if development?

require_relative './models/league'
require_relative './models/match'
require_relative './models/team'

require_relative './controllers/league_controller'