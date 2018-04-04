set -e # exit on error

echo '============================='
echo 'START: review app postdeploy'

# NOTE: this script runs 1 time when heroku creates review app, not every deploy
bundle exec rake db:structure:load
bundle exec rake db:seed

echo 'END: review app postdeploy'
echo '============================='
