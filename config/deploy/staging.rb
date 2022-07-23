set :stage, :staging

set :deploy_to, '/var/www/nachhilfe_s'
set :rails_env, 'staging'
set :branch, ENV['DEPLOY_BRANCH'] || 'main'

server 'app03-prod.chandra.makandra.de', user: 'deploy-nachhilfe_s', roles: %w(app web cron db) # first is primary
server 'app04-prod.chandra.makandra.de', user: 'deploy-nachhilfe_s', roles: %w(app web)
