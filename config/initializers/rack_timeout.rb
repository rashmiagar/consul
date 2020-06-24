# Rack::Timeout.service_timeout = Rails.env.development? ? 0 : 25
if Rails.env.development?
  puts "in dev"
  Rails.application.config.middleware.insert_before Rack::Runtime, Rack::Timeout, service_timeout: 0
else 
  Rails.application.config.middleware.insert_before Rack::Runtime, Rack::Timeout, service_timeout: 25
end