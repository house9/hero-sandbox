# if [[ $HEROKU_APP_NAME =~ (staging|production)$ ]]; then
#   echo 'exit on error.....'
#   set -e # exit on error
# fi


echo '============================='
echo 'START: custom release steps'

# echo '-----------------------------'
# echo 'RELEASE STEP: assets_nodigest'
# bundle exec rake assets_nodigest
# echo '-----------------------------'

# echo '-----------------------------'
# echo 'RELEASE STEP: db:migrate'
# echo 'NOTE: this will fail 1st time on Preview Apps'
# bundle exec rake db:migrate
# echo '-----------------------------'

echo 'END: custom release steps'
echo '============================='
