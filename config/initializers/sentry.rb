Sentry.init do |config|
  config.environments = %w[ production staging ]
  config.dsn = 'https://d14a4e58823d4c09b4c3b894595e6981@o379868.ingest.sentry.io/6645886'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end