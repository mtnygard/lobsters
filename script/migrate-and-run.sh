#! /bin/bash -x
echo "Waiting for DB to be available"
sleep 10
cd /app
bundle exec rake db:setup
export RAILS_ENV=development
bundle exec bin/rails server --binding 0.0.0.0
