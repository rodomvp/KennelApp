source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails',        '>= 4.2.4'
gem 'bcrypt'
gem 'faker' #, group: [:development, :staging]
gem 'carrierwave'
gem 'mini_magick'
gem 'fog'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'bootstrap-sass'
gem 'sass-rails',   '>= 5.0.2'
gem 'uglifier',     '>= 2.5.3'
gem 'coffee-rails', '>= 4.1.0'
gem 'jquery-rails', '>= 4.0.3'
gem 'turbolinks',   '>= 2.3.0'
gem 'jbuilder',     '>= 2.2.3'
gem 'sdoc',         '>= 0.4.0', group: :doc
gem 'markdown-rails'
gem 'redcarpet'
gem 'table_print' ## TODO: what's this for?
gem 'pdfkit'
gem 'wkhtmltopdf-heroku'
gem 'puma'
gem 'pg',           '>= 0.17.1'
gem 'pry-rails'
gem 'rmagick'

group :development, :test do
  gem 'byebug',      '>= 3.4.0'
  gem 'web-console', '>= 2.0.0.beta3'
  gem 'spring',      '>= 1.1.3'
  gem 'awesome_print'
  gem 'better_errors'
  gem 'dotenv-rails'

  # Diagramming gems

  # https://github.com/preston/railroady
  #   rake diagram:all
  #   rake diagram:all_with_engine
  gem 'railroady'

  # https://github.com/voormedia/rails-erd
  #   bundle exec erd
  gem 'rails-erd'
end

group :test do
  gem 'minitest-reporters', '>= 1.0.5'
  gem 'mini_backtrace',     '>= 0.1.3'
  gem 'guard'
  gem 'guard-minitest',     '>= 2.3.1'
end

group :staging, :production do
  gem 'rails_stdout_logging'
  gem 'rails_12factor', '>= 0.0.2'
end

