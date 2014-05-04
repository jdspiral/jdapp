# ActionMailer::Base.add_delivery_method :mandrill_delivery, MandrillDelivery

MandrillMailer.configure do |config|
  config.api_key = ENV['MANDRILL_APIKEY']
end