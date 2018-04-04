namespace :heroku do
  desc 'Heroku Review App postdeploy post step'
  task :review_app_postdeploy do
    heroku = PlatformAPI.connect_oauth(ENV['HEROKU_API_TOKEN'])

    heroku.config_var.update('HEROKU_REVIEW_APP_INITIAL_DEPLOY', 'NO')
  end
end
