get '/league' do
# INDEX
options = {
  matches: Match.all,
  teams: Team.all
}
@league = League.new(options)
erb :"league/index"
end