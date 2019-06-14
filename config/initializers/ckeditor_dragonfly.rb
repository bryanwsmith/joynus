# Load Dragonfly if it isn't loaded already.
require 'dragonfly'

# Basic configuration
Dragonfly.app.configure do
  plugin :imagemagick

  secret '86a54b713b5040beffbb9b052f36dac51d77a6a1430f3e4bfb4808a955eb3ca3'

  url_format '/media/:job/:name'

  datastore :file,
    root_path: Rails.root.join('public', 'uploads', 'images', Rails.env),
    server_root: Rails.root.join('public')
end

Dragonfly.app(:ckeditor).configure do
  plugin :imagemagick
  secret "7fd6d03b81941796f3128dfe52404bf58920068bf973b155c2eaf6284b69af47"

  # Store files in public/uploads/ckeditor. This is not
  # mandatory and the files don't even have to be stored under
  # public. See http://markevans.github.io/dragonfly/data-stores
  datastore :file, root_path: Rails.root.join('public/uploads/ckeditor', Rails.env).to_s,
                   server_root: 'public'

  # Accept asset requests on /ckeditor_assets. Again, this path is
  # not mandatory. Just be sure to include :job somewhere.
  url_format '/uploads/ckeditor/:job/:basename.:format'

  case Rails.env
  when 'development'
    url_host 'http://localhost:3000'
  when 'production'
    # TODO: set host before going live on production
  end
end

# Rails.application.middleware.use Dragonfly::Middleware, :ckeditor

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware
Rails.application.middleware.use Dragonfly::Middleware, :ckeditor

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
