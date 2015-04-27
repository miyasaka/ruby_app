Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.logger = ActiveSupport::TaggedLogging.new(Logger.new(config.paths["log"].first))
  config.logger.formatter = Logger::Formatter.new
  config.logger.formatter.extend(ActiveSupport::TaggedLogging::Formatter)

  config.log_tags = [
    lambda { |req|
      if req.env["UNIQUE_ID"].nil?
        "-"
      else
##        req.env["UNIQUE_ID"]
      end
    },
    :uuid,
    lambda { |req|
      #if req.session["_hcd_session"].nil?
      if req.cookies["_hcd_session"].nil?
        "-"
      else
        #req.session["_hcd_session"]
##        req.cookies["_hcd_session"]
      end
    }
  ]


end