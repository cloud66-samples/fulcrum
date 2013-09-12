#!/bin/bash
source /var/.cloud66_env
cd $RAILS_STACK_PATH
echo "Fulcrum::Application.config.secret_token = '$(bundle exec rake secret)'" > config/initializers/secret_token.rb
bundle exec rake db:setup
