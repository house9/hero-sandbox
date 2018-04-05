# hero[ku] sandbox

Rails 4.2 application to explore Heroku pipeline

## NOTES

https://devcenter.heroku.com/articles/release-phase#review-apps-and-postdeploy-script

Each deploy

- dyno builds
- release step in Procfile runs

When Review App builds first time

- dyno builds
- Procfile runs `release` step
- app.json runs `postdeploy` step 1 time

^ it would be nice if postdeploy ran before release :(

x
