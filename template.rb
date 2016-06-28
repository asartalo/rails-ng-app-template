# TODO: Check ravski's
#  - gems
#  - initializers
#  - configuration

#===============================================================================
# Gems
#===============================================================================
gem 'active_model_serializers'
gem 'slim-rails'

# Pagination
gem 'kaminari'

# JSON
gem 'oj'
gem 'multi_json'

# Sidekiq
use_sidekiq = yes?('Include Sidekiq?')
gem 'sidekiq' if use_sidekiq

gem_group :development, :test do
  gem 'api_matchers'
  gem 'faker'
  gem 'spring'
end

gem_group :development do
  gem 'annotate'
  gem 'bullet'
  gem 'pry-rails'
end

gem_group :test do
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end
