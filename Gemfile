source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.16'
#gem 'rails', '4.2.1'
gem 'bcrypt-ruby', '~> 3.0.0'


gem 'strong_parameters'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Use Haml for templates
gem 'haml'
# Use Ruby debugger
group :development, :test do
  gem 'debugger'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# add to end of Gemfile
group :test do
	gem 'cucumber-rails', :require => false
	gem 'cucumber-rails-training-wheels'	# some pre-fabbed step definitions
	gem 'database_cleaner'	# to clear Cumber's test database between runs
	gem 'capybara'		# lets Cucumber pretend to be a web broswer
	gem 'launchy'		# a useful debugging aid for user stories
	#gem 'cucumber_factory'
	gem 'pickle'
	#gem 'factory_girl_rails'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem 'figaro'

group :test, :development do
  gem 'rspec-rails'
  gem 'ZenTest'
  gem 'autotest-rails'
  gem 'simplecov'

end
