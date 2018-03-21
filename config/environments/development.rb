Eq8::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  config.action_controller.default_url_options = { host: 'localhost:3000' }

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
  config.assets.precompile += %w(.svg .eot .woff .ttf)

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  config.x.blog_db_file = Rails.root.join('db','blogs.json')
  config.x.talk_db_file = Rails.root.join('db','talks.json')
  config.x.til_db_file  = Rails.root.join('db','tils.json')
end
