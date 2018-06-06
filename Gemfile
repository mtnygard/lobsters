source "https://rubygems.org"

gem "json"
gem "rails", "~> 5.1"
gem "actionpack-xml_parser"

platforms :ruby do
  gem "unicorn"
end

gem 'mysql2', '>= 0.3.18', '< 0.5'

# uncomment to use PostgreSQL
# gem "pg"

gem "uglifier", ">= 1.3.0"
gem "jquery-rails", "~> 4.3"
gem "dynamic_form"

gem "exception_notification"

gem "bcrypt", "~> 3.1.2"
gem "rotp"
gem "rqrcode"

gem "nokogiri", ">= 1.7.2"
gem "htmlentities"
gem "commonmarker", "~> 0.14"

gem "activerecord-typedstore"

# for twitter-posting bot
gem "oauth"

# for parsing incoming mail
gem "mail"

# needed when running in Docker
gem "tzinfo-data"

gem "roar"
gem "multi_json"

group :test, :development do
  gem "rspec-rails", "~> 3.6"
  gem "machinist"
  gem "sqlite3"
  gem "faker"
end
