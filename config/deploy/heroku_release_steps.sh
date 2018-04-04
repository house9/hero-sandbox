echo '============================='
echo 'START: custom release steps'

# echo '-----------------------------'
# echo 'RELEASE STEP: assets_nodigest'
# bundle exec rake assets_nodigest
# echo '-----------------------------'

echo '-----------------------------'
echo 'RELEASE STEP: db:migrate'
bundle exec rake db:migrate
echo '-----------------------------'

echo 'END: custom release steps'
echo '============================='
