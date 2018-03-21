require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "active_model/naming"
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Eq8
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.i18n.enforce_available_locales = true

    config.x.app_domain = 'www.eq8.eu'

    config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
      #rewrite   '/wiki/John_Trupiano',  '/john'
      #r301      '/wiki/Yair_Flicker',   '/yair'
      #r302      '/wiki/Greg_Jastrab',   '/greg'
      #r301      %r{/wiki/(\w+)_\w+},    '/$1'
      #


      #r301      %r{/tils/40}, 'https://blog.eq8.eu/til/connect-ruby-on-rails-app-to-azure-cosmosdb-with-mongoid-gem.html'
      #r301      %r{/tils/39}, 'https://blog.eq8.eu/til/find-duplicate-email-records-with-rails.html'
      #r301      %r{/tils/38}, 'https://blog.eq8.eu/til/elastic-search-total-count.html'
      #r301      %r{/tils/37}, 'https://blog.eq8.eu/til/change-memory-size-for-elasticsearch-jvm-heap.html'
      #r301      %r{/tils/36}, 'https://blog.eq8.eu/til/elastic-beanstalk-docker-using-aws-ec2-container-registry-ecr.html'
      #r301      %r{/tils/35}, 'https://blog.eq8.eu/til/how-to-get-current-enviroment-name-in-phoenix-elixir.html'
      #r301      %r{/tils/34}, 'https://blog.eq8.eu/til/ako-opravit-flyxbox-od-orange'
      #r301      %r{/tils/33}, 'https://blog.eq8.eu/til/web-neutrality-based-on-ip-location.html'
      #r301      %r{/tils/32}, 'https://blog.eq8.eu/til/how-to-reload-iex-with-a-new-code.html'
      #r301      %r{/tils/31}, 'https://blog.eq8.eu/til/configure-aws-lambda-to-alter-security-groups.html'
      #r301      %r{/tils/30}, 'https://blog.eq8.eu/til/tell-activejob-to-perform_later-as-perform_now-in-test-or-spec.html'
      #r301      %r{/tils/29}, 'https://blog.eq8.eu/til/selecting-value-from-list-of-tuples-elixir.html'
      #r301      %r{/tils/28}, 'https://blog.eq8.eu/til/exclude-tags-when-running-exunit-tests.html'
      #r301      %r{/tils/27}, 'https://blog.eq8.eu/til/aws-s3-datetime-format-to-ecto.html'
      #r301      %r{/tils/26}, 'https://blog.eq8.eu/til/datetime-formating-options.html'
      #r301      %r{/tils/25}, 'https://blog.eq8.eu/til/phoenix-increase-timeout-when-debugging-with-iexpry-in-exunit.html'
      #r301      %r{/tils/24}, 'https://blog.eq8.eu/til/how-to-debug-phoenix-elixir-application.html'
      #r301      %r{/tils/23}, 'https://blog.eq8.eu/til/send-files-of-server.html'
      #r301      %r{/tils/22}, 'https://blog.eq8.eu/til/raspberry-pi-cifs-mount-on-boot.html'
      #r301      %r{/tils/21}, 'https://blog.eq8.eu/til/elixir-update-struct-value.html'
      #r301      %r{/tils/20}, 'https://blog.eq8.eu/til/ecto-get-last-record.html'
      #r301      %r{/tils/19}, 'https://blog.eq8.eu/til/exunit-wait-for-genserver-cast.html'
      #r301      %r{/tils/18}, 'https://blog.eq8.eu/til/removing-old-remote-branches-in-bulk.html'
      #r301      %r{/tils/17}, 'https://blog.eq8.eu/til/ubuntu-14-04-ruby-rails-c-dependancy-solution.html'
      #r301      %r{/tils/16}, 'https://blog.eq8.eu/til/rails-log-only-partials.html'
      #r301      %r{/tils/15}, 'https://blog.eq8.eu/til/capybara-matchers-in-rspec.html'
      #r301      %r{/tils/14}, 'https://blog.eq8.eu/til/error-hint-mysql-gem.html'
      #r301      %r{/tils/13}, 'https://blog.eq8.eu/til/use-rails-delegate-lib-only.html'
      #r301      %r{/tils/12}, 'https://blog.eq8.eu/til/run-multiple-times-rspec-on-same-machine.html'
      #r301      %r{/tils/11}, 'https://blog.eq8.eu/til/override-default-rake-task-of-rails.html'
      #r301      %r{/tils/10}, 'https://blog.eq8.eu/til/carrierwave-uploader-not-processing-in-rspec.html'
      #r301      %r{/tils/9}, 'https://blog.eq8.eu/til/troubles-with-encoding.html'
      #r301      %r{/tils/8}, 'https://blog.eq8.eu/til/free-up-space-on-your-linux-server.html'
      #r301      %r{/tils/7}, 'https://blog.eq8.eu/til/force-ssl-nginx-infinite-loop.html'
      #r301      %r{/tils/6}, 'https://blog.eq8.eu/til/rack-test-change-default-host.html'
      #r301      %r{/tils/5}, 'https://blog.eq8.eu/til/fetch-amazon-s3-backup-from-console.html'
      #r301      %r{/tils/4}, 'https://blog.eq8.eu/til/yield-returning-zero-0.html'
      #r301      %r{/tils/3}, 'https://blog.eq8.eu/til/rails-deliver-mail-to-file.html'
      #r301      %r{/tils/2}, 'https://blog.eq8.eu/til/make-private-method-public-in-ruby.html'
      #r301      %r{/tils/1}, 'https://blog.eq8.eu/til/no-database-connection-in-rails-console.html'
      ##r301      '/tils', 'https://blog.eq8.eu/til'
      ##
      #r301      %r{/talks/2}, 'http://blog.eq8.eu/talk/lrug-talk-aws-elastic-beanstalk-docker-rails.html'
      #r301      %r{/talks/1}, 'http://blog.eq8.eu/talk/lightning-talk-lrug-web-developer-life-hacks.html'

      ## blogs/articles
      #r301      %r{/blogs/47}, 'https://blog.eq8.eu/article/write-more-explicit-code-layers.html'
      #r301      %r{/blogs/46}, 'https://blog.eq8.eu/article/lessons-learned-from-functional-programming-as-a-ruby-developer.html'
      #r301      %r{/blogs/45}, 'https://blog.eq8.eu/article/ruby-call-method.html'
      #r301      %r{/blogs/44}, 'https://blog.eq8.eu/article/csrf-protection-on-single-page-app-api.html'
      #r301      %r{/blogs/43}, 'https://blog.eq8.eu/article/cloud-coding.html'
      #r301      %r{/blogs/42}, 'https://blog.eq8.eu/article/rails-assets-pipeline-and-docker.html'
      #r301      %r{/blogs/41}, 'https://blog.eq8.eu/article/policy-object.html'
      #r301      %r{/blogs/40}, 'https://blog.eq8.eu/article/github-credentials-in-bundler.html'
      #r301      %r{/blogs/39}, 'https://blog.eq8.eu/article/expresive-tests-rspec.html'
      #r301      %r{/blogs/38}, 'https://blog.eq8.eu/article/rails-association-relation-arel-magic.html'
      #r301      %r{/blogs/37}, 'https://blog.eq8.eu/article/put-vs-patch-vs-your-firewall.html'
      #r301      %r{/blogs/36}, 'https://blog.eq8.eu/article/put-vs-patch.html'
      #r301      %r{/blogs/35}, 'https://blog.eq8.eu/article/setup-ubuntu-16.04.html'
      #r301      %r{/blogs/34}, 'https://blog.eq8.eu/article/set-up-aws-elastic-beanstalk-demo.html'
      #r301      %r{/blogs/33}, 'https://blog.eq8.eu/article/aws-route-53-cloudflare.html'
      #r301      %r{/blogs/32}, 'https://blog.eq8.eu/article/cors-rails-assets-cdn-heroku.html'
      #r301      %r{/blogs/31}, 'https://blog.eq8.eu/article/simple-ralis-authentication-for-one-user.html'
      #r301      %r{/blogs/30}, 'https://blog.eq8.eu/article/rspec-json-api-testing.html'
      #r301      %r{/blogs/29}, 'https://blog.eq8.eu/article/aws-elasticbeanstalk-hooks.html'
      #r301      %r{/blogs/28}, 'https://blog.eq8.eu/article/ruby-enumerable-enumerator-lazy-and-domain-specific-collections.html'
      #r301      %r{/blogs/27}, 'https://blog.eq8.eu/article/rspec-be-within-matcher.html'
      #r301      %r{/blogs/26}, 'https://blog.eq8.eu/article/rendering-paperclip-attachments-via-elasticsearch.html'
      #r301      %r{/blogs/25}, 'https://blog.eq8.eu/article/common-aws-elasticbeansalk-docker-issues-and-solutions.html'
      #r301      %r{/blogs/24}, 'https://blog.eq8.eu/article/rails-debuging-tricks.html'
      #r301      %r{/blogs/23}, 'https://blog.eq8.eu/article/spring-cleanup-web-developer.html'
      #r301      %r{/blogs/22}, 'https://blog.eq8.eu/article/rails-validators-in-separte-object.html'
      #r301      %r{/blogs/21}, 'https://blog.eq8.eu/article/rails-gets-redirected-to-wrong-host-when-nginx.html'
      #r301      %r{/blogs/20}, 'https://blog.eq8.eu/article/keyboard-tips.html'
      #r301      %r{/blogs/19}, 'https://blog.eq8.eu/article/setting-up-simple-wordpres-deployment-with-codeship-to-aws-ec2.html'
      #r301      %r{/blogs/18}, 'https://blog.eq8.eu/article/chromebook-for-web-developers.html'
      #r301      %r{/blogs/17}, 'https://blog.eq8.eu/article/build-or-not-to-build-docker-images-in-the-cloud.html'
      #r301      %r{/blogs/16}, 'https://blog.eq8.eu/article/scissors-rule-in-coding.html'
      #r301      %r{/blogs/15}, 'https://blog.eq8.eu/article/cronntab-rbenv-bundle-exec-rake-task.html'
      #r301      %r{/blogs/14}, 'https://blog.eq8.eu/article/force_ssl_is_different_than_force_ssl.html'
      #r301      %r{/blogs/13}, 'https://blog.eq8.eu/article/ruby-ancestors-descendants-and-other-ways-how-to-pull-relatives.html'
      #r301      %r{/blogs/12}, 'https://blog.eq8.eu/article/array-of-json-data-in-html-data-attribute.html'
      #r301      %r{/blogs/11}, 'https://blog.eq8.eu/article/rspec-matchers-in-db-seed-file.html'
      #r301      %r{/blogs/10}, 'https://blog.eq8.eu/article/proper-way-how-to-translate-rails-validation-messages.html'
      #r301      %r{/blogs/9}, 'https://blog.eq8.eu/article/mail-interceptor-for-different-environments.html'
      #r301      %r{/blogs/8}, 'https://blog.eq8.eu/article/rspec-performance-improvement-with-before-all.html'
      #r301      %r{/blogs/7}, 'https://blog.eq8.eu/article/render-images-with-rails-controller.html'
      #r301      %r{/blogs/6}, 'https://blog.eq8.eu/article/jenkins-ci-for-rails-4-rspec-cucumber-selenium.html'
      #r301      %r{/blogs/5}, 'https://blog.eq8.eu/article/temporary-enable-dalli-cache-store-in-rspec.html'
      #r301      %r{/blogs/4-}, 'https://blog.eq8.eu/article/installing-rbenv-on-ubuntu.html'
      #r301      '/blogs/4',    'https://blog.eq8.eu/article/installing-rbenv-on-ubuntu.html'
      #r301      %r{/blogs/3-}, 'https://blog.eq8.eu/article/instaling-nginx-1-4-4-on-ubuntu-from-source.html'
      #r301      '/blogs/3',    'https://blog.eq8.eu/article/instaling-nginx-1-4-4-on-ubuntu-from-source.html'
      #r301      %r{/blogs/1-}, 'https://blog.eq8.eu/article/shoulda-matchers-depricated-now-what.html'
      #r301      '/blogs/1',    'https://blog.eq8.eu/article/shoulda-matchers-depricated-now-what.html'

      #r301      '/blogs', 'https://blog.eq8.eu/article'
      #r301      '/blog', 'https://blog.eq8.eu/article'
      #r301      '/artiles', 'https://blog.eq8.eu/article'
      #r301      '/artile', 'https://blog.eq8.eu/article'
    end
  end
end
