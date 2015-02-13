source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


#gem 'eventmachine'  # some people had problems with DB 
gem 'thin'  #this requires the web server to be Thin, only works for Thin though
gem 'animate-rails'  # this is for animation through CSS effects
gem 'bootstrap-sass' # this is to include using 'bootstrap' CSS
gem 'rails_12factor' # for bootstrap to work while pushed to Heroku
#gem 'autoprefixer'  # used for SASS for bootstrap
gem 'devise'         # authentication module
gem 'cancancan'      # authorization Gem for Ruby on Rails

#gem 'haml-rails'
#gem 'slim-rails'
#gem 'premailer' #inline styling for Emails


gem 'delayed_job_active_record'  #for background process of blocking tasks
gem 'delayed_job_web'         #UI for seeing the queued tasks

gem 'simple_form'  #for simple_form usage
gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+

# both below are for file attachments, carrierwave is preferred, while paperclip is easier to use/setup
gem 'carrierwave'           #for attachment files
gem "paperclip", "~> 4.2"   #another gem for attachment files
gem 'mini_magick'           #??

gem 'fog'  # interface with S3, google, etc, all service providers


group :development do  #these are required in ~/.irbrc 
  gem "colorize"
  gem "interactive_editor"
  gem "hirb"
  gem "awesome_print"
  gem "letter_opener" #to do with email client/mailer(?)
end

group :test do
  gem "simplecov", require: false  # only load upon usage
end

group :development, :test do
#  gem "pry-rails"
#  gem "pry-byebug"
  gem "quiet_assets"  #rails log does not show the assets (js, css) related entries
  gem 'faker'  #CodeCore added for homework purposes, generates a bunch of Fake information/data


  gem "rspec-rails"  #Rspec for testing
  gem 'capybara' #capybara for integration testing
  gem 'launchy'   #also for capybara testing 
  gem 'factory_girl_rails'  #this is for generate Rspec testing
  

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

