require('sinatra')
require('sinatra/reloader')
also_reload('/lib/**/*.rb')
require('./lib/board')
require('./lib/game')
require('./lib/player')
require('./lib/space')


get('/') do
erb(:index)
end

get('/play') do  
erb(:play)
end

post('/play') do
erb(:play)
end
