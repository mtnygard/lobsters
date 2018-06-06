#! /bin/bash
export RAILS_ENV=development
cd /app
bundle install
rake db:setup
bin/rails server --binding 0.0.0.0
