set :stage, :production

set :deploy_to, '/var/www/nachhilfe_p'
set :rails_env, 'production'
set :branch, 'main'

server 'app03-prod.chandra.makandra.de', user: 'deploy-nachhilfe_p', roles: %w(app web cron db) # first is primary
server 'app04-prod.chandra.makandra.de', user: 'deploy-nachhilfe_p', roles: %w(app web)
