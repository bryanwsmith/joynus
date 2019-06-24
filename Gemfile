source 'https://rubygems.org'

ruby '2.3.6'

# workaround bug fix for bundler fetching sources from github via HTTP and not HTTPS
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'dotenv-rails'

gem 'active_link_to'
gem 'bcrypt-ruby'
gem 'ckeditor',               '4.3.0', github: 'velocity-labs/ckeditor', branch: 'joynus-edits'
gem 'coffee-rails',           '~> 4.0.0'
gem 'dragonfly'
gem 'dragonfly-s3_data_store'
gem 'fontello_rails_converter'
gem 'foundation-rails'
gem 'font-awesome-rails'
gem 'friendly_id',            '~> 5.2'
gem 'haml',                   '~> 4.0.6'
gem 'invisible_captcha'
gem 'jbuilder',               '~> 2.0'
gem 'jquery-rails'
gem 'kaminari'
gem 'newrelic_rpm'
gem 'orm_adapter'
gem 'pg',                     '~> 0.17.1'
gem 'rails',                  '4.1.8'
gem 'redcarpet'
gem 'sass-rails',             '~> 4.0.3'
gem 'shareable'
gem 'uglifier',               '>= 1.3.0'

group :devleopment do
  gem 'spring'
  gem 'thin'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
end
