# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}

WillPaginate::ViewHelpers.will_paginate.previous_label[:previous_label] = '&lt 前へ'
WillPaginate::ViewHelpers.will_paginate.previous_label[:next_label] = '次へ &gt'
