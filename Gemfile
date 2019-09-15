source 'https://rubygems.org'

ruby '2.3.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use SCSS for stylesheets
#gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
#gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
#gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Haml as the templating library
gem 'haml'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'orderly'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'themoviedb'
gem 'sass'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'rspec-rails'
  gem 'guard-rspec'
  
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  

  #added
  gem 'byebug'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
end

#added
group :test do
  gem 'cucumber-rails' 
  gem 'cucumber-rails-training-wheels'

  gem 'shoulda-matchers'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'simplecov', require: false
  
  
end

group :production do
  gem 'pg'# for Heroku deployment
  gem 'rails_12factor'
  
  #added
  # Gems used only for assets and not required
  # in production environments by default.


  #gem 'therubyracer', '~> 0.12.0'
  gem 'sass-rails', '~> 5.0.3'
  gem 'coffee-rails', '~> 4.1.0'
  gem 'uglifier', '>= 2.7.1'

  gem 'jquery-rails'
  gem 'haml'
  gem 'protected_attributes'

  # Use unicorn as the web server
  # gem 'unicorn'
  
  # Deploy with Capistrano
  # gem 'capistrano'  
  
end
gem 'devise'