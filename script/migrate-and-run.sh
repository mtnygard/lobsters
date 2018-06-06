#! /bin/bash
echo "Waiting for DB to be available"
sleep 10
cd /app
rake db:create db:setup
export RAILS_ENV=development
bin/rails server --binding 0.0.0.0
