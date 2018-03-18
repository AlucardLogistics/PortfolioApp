source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# gem that provides friendly URLs (takes blog title and set it instead of blog ID in the URL)
gem 'friendly_id', '~> 5.1.0'
# gem for authentication
gem 'devise', '~> 4.4', '>= 4.4.1'
# gem for Bootstrap
gem 'bootstrap', '~> 4.0.0'
# JQuery for rails for rails 5.1+
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
#custom made gem that will handle the @copyright tag
gem 'alucard_logistics_view_tool', git: 'https://github.com/AlucardLogistics/alucard_logistics_view_tool'
#Petergate gem for authorization structure
gem 'petergate', '~> 1.8', '>= 1.8.1'
#gem for styling with icons
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.3'
#gem for pagination
gem 'kaminari', '~> 1.1', '>= 1.1.1'
#gem for Upload files in your Ruby applications, map them to a range of ORMs, store them on different backends
gem 'carrierwave', '~> 1.2', '>= 1.2.2'
#gem for manipulate images with minimal use of memory
gem 'mini_magick', '~> 4.8'
#gem for Use aws-sdk for S3 support in CarrierWave
gem 'carrierwave-aws', '~> 1.3'
#gem for Autoload dotenv in Rails
gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'