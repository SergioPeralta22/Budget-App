# Default database configuration
&default:
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

# Development environment
development:
  <<: *default
  database: noteapp_development
  username: test3
  password: test3
  port: 5432
  host: localhost

# Test environment
test:
  <<: *default
  database: noteapp_test
  username: test3
  password: test3
  port: 5432
  host: localhost

# Production environment
production:
  <<: *default
  database: noteapp_production
  url: <%= ENV["MY_APP_DATABASE_URL"] %>