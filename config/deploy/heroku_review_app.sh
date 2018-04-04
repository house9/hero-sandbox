set -e # exit on error

echo '============================='
echo 'START: review app postdeploy'

bundle exec rake db:structure:load

echo 'END: review app postdeploy'
echo '============================='
